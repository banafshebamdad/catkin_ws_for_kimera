;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_tools::VLCFrames)
  (if (not (find-package "POSE_GRAPH_TOOLS"))
    (make-package "POSE_GRAPH_TOOLS"))
  (shadow 'VLCFrames (find-package "POSE_GRAPH_TOOLS")))
(unless (find-package "POSE_GRAPH_TOOLS::VLCFRAMES")
  (make-package "POSE_GRAPH_TOOLS::VLCFRAMES"))

(in-package "ROS")
;;//! \htmlinclude VLCFrames.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pose_graph_tools::VLCFrames
  :super ros::object
  :slots (_header _destination_robot_id _frames ))

(defmethod pose_graph_tools::VLCFrames
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:destination_robot_id __destination_robot_id) 0)
    ((:frames __frames) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _destination_robot_id (round __destination_robot_id))
   (setq _frames __frames)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:destination_robot_id
   (&optional __destination_robot_id)
   (if __destination_robot_id (setq _destination_robot_id __destination_robot_id)) _destination_robot_id)
  (:frames
   (&rest __frames)
   (if (keywordp (car __frames))
       (send* _frames __frames)
     (progn
       (if __frames (setq _frames (car __frames)))
       _frames)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _destination_robot_id
    4
    ;; pose_graph_tools/VLCFrameMsg[] _frames
    (apply #'+ (send-all _frames :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _destination_robot_id
       (write-long _destination_robot_id s)
     ;; pose_graph_tools/VLCFrameMsg[] _frames
     (write-long (length _frames) s)
     (dolist (elem _frames)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _destination_robot_id
     (setq _destination_robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pose_graph_tools/VLCFrameMsg[] _frames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frames (let (r) (dotimes (i n) (push (instance pose_graph_tools::VLCFrameMsg :init) r)) r))
     (dolist (elem- _frames)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pose_graph_tools::VLCFrames :md5sum-) "ed62f9b44312b921eed3042e46afa35b")
(setf (get pose_graph_tools::VLCFrames :datatype-) "pose_graph_tools/VLCFrames")
(setf (get pose_graph_tools::VLCFrames :definition-)
      "std_msgs/Header header
uint32 destination_robot_id
pose_graph_tools/VLCFrameMsg[] frames
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
MSG: pose_graph_tools/VLCFrameMsg
uint32 robot_id
uint32 pose_id
uint32 submap_id
sensor_msgs/Image descriptors_mat          # Descriptor of all keypoints stored as a matrix.
sensor_msgs/PointCloud2 versors            # Bearing vector of each keypoint expressed as a 3D vector.
float32[] depths                           # Depth of each keypoint. The 3D keypoint v can be recovered from the depth d and bearing u by v = d * u / u[2]
geometry_msgs/Pose T_submap_pose
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

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

")



(provide :pose_graph_tools/VLCFrames "ed62f9b44312b921eed3042e46afa35b")


