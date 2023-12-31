;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::PoseGraph)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'PoseGraph (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::POSEGRAPH")
  (make-package "POSE_GRAPH_TOOLS::POSEGRAPH"))

(in-package "ROS")
;;//! \htmlinclude PoseGraph.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pose_graph_tools::PoseGraph
  :super ros::object
  :slots (_header _nodes _edges ))

(defmethod pose_graph_tools::PoseGraph
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:nodes __nodes) ())
    ((:edges __edges) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _nodes __nodes)
   (setq _edges __edges)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:nodes
   (&rest __nodes)
   (if (keywordp (car __nodes))
       (send* _nodes __nodes)
     (progn
       (if __nodes (setq _nodes (car __nodes)))
       _nodes)))
  (:edges
   (&rest __edges)
   (if (keywordp (car __edges))
       (send* _edges __edges)
     (progn
       (if __edges (setq _edges (car __edges)))
       _edges)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pose_graph_tools/PoseGraphNode[] _nodes
    (apply #'+ (send-all _nodes :serialization-length)) 4
    ;; pose_graph_tools/PoseGraphEdge[] _edges
    (apply #'+ (send-all _edges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pose_graph_tools/PoseGraphNode[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (send elem :serialize s)
       )
     ;; pose_graph_tools/PoseGraphEdge[] _edges
     (write-long (length _edges) s)
     (dolist (elem _edges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pose_graph_tools/PoseGraphNode[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (let (r) (dotimes (i n) (push (instance pose_graph_tools::PoseGraphNode :init) r)) r))
     (dolist (elem- _nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pose_graph_tools/PoseGraphEdge[] _edges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _edges (let (r) (dotimes (i n) (push (instance pose_graph_tools::PoseGraphEdge :init) r)) r))
     (dolist (elem- _edges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pose_graph_tools::PoseGraph :md5sum-) "ecd0fd84f36ad0718b1bf8ab85a65268")
(setf (get pose_graph_tools::PoseGraph :datatype-) "pose_graph_tools/PoseGraph")
(setf (get pose_graph_tools::PoseGraph :definition-)
      "Header header

# Nodes and edges
PoseGraphNode[] nodes
PoseGraphEdge[] edges
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: pose_graph_tools/PoseGraphNode
Header header

int32 robot_id

uint64 key

geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: pose_graph_tools/PoseGraphEdge
Header header

uint64 key_from
uint64 key_to

int32 robot_from
int32 robot_to

int32 type

# Type enums
int32 ODOM      = 0
int32 LOOPCLOSE = 1
int32 LANDMARK  = 2
int32 REJECTED_LOOPCLOSE = 3
int32 MESH = 4
int32 POSE_MESH = 5
int32 MESH_POSE = 6

# Transforms in ede
geometry_msgs/Pose pose
float64[36] covariance
")



(provide :pose_graph_tools/PoseGraph "ecd0fd84f36ad0718b1bf8ab85a65268")


