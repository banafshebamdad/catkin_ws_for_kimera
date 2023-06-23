#include <ros/ros.h>
#include <kimera_vio_ros/KimeraVIO.h>
#include <nav_msgs/OccupancyGrid.h>
#include <geometry_msgs/PoseStamped.h>
#include <queue>
#include <cmath>

struct Node {
    int x;
    int y;
    double f; // Total cost (f = g + h)
    double g; // Movement cost from start to current node
    double h; // Heuristic cost from current node to goal

    Node(int x, int y, double f, double g, double h)
        : x(x), y(y), f(f), g(g), h(h) {}
};

// Custom comparison for the priority queue in A* algorithm
struct CompareNodes {
    bool operator()(const Node& lhs, const Node& rhs) const {
        return lhs.f > rhs.f;
    }
};

// Helper function to calculate Euclidean distance heuristic
double calculateHeuristic(int x, int y, int goalX, int goalY) {
    return std::sqrt(std::pow(goalX - x, 2) + std::pow(goalY - y, 2));
}

// Check if a node is within the grid bounds
bool isValidNode(int x, int y, int rows, int cols) {
    return (x >= 0 && x < rows && y >= 0 && y < cols);
}

class AStarPathPlanner {
public:
    AStarPathPlanner() {
        // the tilde (~) symbol passed as an argument to the NodeHandle constructor indicates 
        // that the node handle should be initialized with the private namespace. 
        // When a ROS node is launched, it has its own namespace, and the private namespace is specific to that node. 
        // It allows the node to have private parameters and topics that are not shared with other nodes.
        // By initializing the NodeHandle with the private namespace, you can access parameters and topics 
        // specific to that node. It enables the node to configure its behavior using private parameters and 
        // interact with topics unique to its operation.
        ros::NodeHandle nh("~");
        vio_sub_ = nh.subscribe("/kimera_vio/odometry", 1, &AStarPathPlanner::vioCallback, this);
        map_sub_ = nh.subscribe("/map", 1, &AStarPathPlanner::mapCallback, this);
        goal_sub_ = nh.subscribe("/goal", 1, &AStarPathPlanner::goalCallback, this);
        path_pub_ = nh.advertise<nav_msgs::Path>("/path", 1);
    }

    void vioCallback(const nav_msgs::Odometry::ConstPtr& msg) {
        // Process VIO odometry
        // Update current pose and perform path planning if needed
    }

    void mapCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg) {
        // Process map data
        // Store the map and perform path planning if goal is available
    }

    void goalCallback(const geometry_msgs::PoseStamped::ConstPtr& msg) {
        // Process goal
        // Perform path planning using A* algorithm
        if (!map_received_) {
            ROS_WARN("Map not received. Waiting for map...");
            return;
        }

        if (!vio_received_) {
            ROS_WARN("VIO odometry not received. Waiting for VIO odometry...");
            return;
        }

        // Extract goal coordinates from goal message
        int goalX = static_cast<int>(msg->pose.position.x);
        int goalY = static_cast<int>(msg->pose.position.y);

        // Perform A* path planning
        std::vector<std::pair<int, int>> path = performAStarPathPlanning(goalX, goalY);

        // Convert path to ROS message and publish
        nav_msgs::Path rosPath;
        rosPath.header.stamp = ros::Time::now();
        rosPath.header.frame_id = "map";
        for (const auto& point : path) {
            geometry_msgs::PoseStamped pose;
            pose.pose.position.x = point.first;
            pose.pose.position.y = point.second;
            pose.pose.orientation.w = 1.0;  // Assuming orientation is not important for path
            rosPath.poses.push_back(pose);
        }
        path_pub_.publish(rosPath);
    }

private:
    bool vio_received_ = false;
    bool map_received_ = false;
    std::vector<std::vector<int>> grid_;
    ros::Subscriber vio_sub_;
    ros::Subscriber map_sub_;
    ros::Subscriber goal_sub_;
    ros::Publisher path_pub_;

    std::vector<std::pair<int, int>> performAStarPathPlanning(int goalX, int goalY) {
        int rows = grid_.size();
        int cols = grid_[0].size();

        std::vector<std::vector<bool>> visited(rows, std::vector<bool>(cols, false));
        std::vector<std::vector<std::pair<int, int>>> parent(rows, std::vector<std::pair<int, int>>(cols));

        // Priority queue for open nodes
        std::priority_queue<Node, std::vector<Node>, CompareNodes> openNodes;

        // Add start node to open nodes
        double h = calculateHeuristic(currentX, currentY, goalX, goalY);
        openNodes.emplace(currentX, currentY, h, 0, h);

        // Possible movement directions
        int dx[] = {0, 0, 1, -1};
        int dy[] = {1, -1, 0, 0};

        while (!openNodes.empty()) {
            // Get the node with the lowest f score from open nodes
            Node current = openNodes.top();
            openNodes.pop();

            int x = current.x;
            int y = current.y;

            // Check if goal is reached
            if (x == goalX && y == goalY) {
                // Reconstruct path from goal to start
                std::vector<std::pair<int, int>> path;
                while (x != currentX || y != currentY) {
                    path.push_back(std::make_pair(x, y));
                    int parentX = parent[x][y].first;
                    int parentY = parent[x][y].second;
                    x = parentX;
                    y = parentY;
                }
                path.push_back(std::make_pair(currentX, currentY));
                std::reverse(path.begin(), path.end());
                return path;
            }

            // Mark current node as visited
            visited[x][y] = true;

            // Check adjacent nodes
            for (int i = 0; i < 4; ++i) {
                int newX = x + dx[i];
                int newY = y + dy[i];

                if (isValidNode(newX, newY, rows, cols) && grid_[newX][newY] == 0 && !visited[newX][newY]) {
                    double newG = current.g + 1;  // Assuming uniform movement cost

                    // Check if the node is already in open nodes
                    bool inOpenNodes = false;
                    for (const auto& node : openNodes) {
                        if (node.x == newX && node.y == newY) {
                            inOpenNodes = true;
                            break;
                        }
                    }

                    if (!inOpenNodes || newG < current.g) {
                        double newH = calculateHeuristic(newX, newY, goalX, goalY);
                        double newF = newG + newH;

                        // Update the node or add it to open nodes
                        openNodes.emplace(newX, newY, newF, newG, newH);
                        parent[newX][newY] = std::make_pair(x, y);
                    }
                }
            }
        }

        // If no path is found, return an empty path
        return std::vector<std::pair<int, int>>();
    }
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "astar_planner_node");

    AStarPathPlanner planner;

    ros::spin();

    return 0;
}
