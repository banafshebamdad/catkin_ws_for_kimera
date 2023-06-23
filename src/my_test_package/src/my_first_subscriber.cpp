#include <ros/ros.h>
#include <std_msgs/String.h>

void callback_cpp(const std_msgs::String& msg)
{
    ROS_INFO("Message contains:%s", msg.data.c_str());
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "my_cpp_subscriber_node");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("/talker2", 1000, callback_cpp);

    ros::spin();
}