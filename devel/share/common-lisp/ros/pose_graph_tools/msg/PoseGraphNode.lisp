; Auto-generated. Do not edit!


(cl:in-package pose_graph_tools-msg)


;//! \htmlinclude PoseGraphNode.msg.html

(cl:defclass <PoseGraphNode> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (key
    :reader key
    :initarg :key
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass PoseGraphNode (<PoseGraphNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseGraphNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseGraphNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_tools-msg:<PoseGraphNode> is deprecated: use pose_graph_tools-msg:PoseGraphNode instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PoseGraphNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:header-val is deprecated.  Use pose_graph_tools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <PoseGraphNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:robot_id-val is deprecated.  Use pose_graph_tools-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <PoseGraphNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:key-val is deprecated.  Use pose_graph_tools-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseGraphNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_tools-msg:pose-val is deprecated.  Use pose_graph_tools-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseGraphNode>) ostream)
  "Serializes a message object of type '<PoseGraphNode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseGraphNode>) istream)
  "Deserializes a message object of type '<PoseGraphNode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseGraphNode>)))
  "Returns string type for a message object of type '<PoseGraphNode>"
  "pose_graph_tools/PoseGraphNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseGraphNode)))
  "Returns string type for a message object of type 'PoseGraphNode"
  "pose_graph_tools/PoseGraphNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseGraphNode>)))
  "Returns md5sum for a message object of type '<PoseGraphNode>"
  "5ae7b7deac2dec164b8fe3f389bf1a3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseGraphNode)))
  "Returns md5sum for a message object of type 'PoseGraphNode"
  "5ae7b7deac2dec164b8fe3f389bf1a3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseGraphNode>)))
  "Returns full string definition for message of type '<PoseGraphNode>"
  (cl:format cl:nil "Header header~%~%int32 robot_id~%~%uint64 key~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseGraphNode)))
  "Returns full string definition for message of type 'PoseGraphNode"
  (cl:format cl:nil "Header header~%~%int32 robot_id~%~%uint64 key~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseGraphNode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseGraphNode>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseGraphNode
    (cl:cons ':header (header msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':key (key msg))
    (cl:cons ':pose (pose msg))
))
