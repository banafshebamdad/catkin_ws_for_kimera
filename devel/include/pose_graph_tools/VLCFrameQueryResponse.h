// Generated by gencpp from file pose_graph_tools/VLCFrameQueryResponse.msg
// DO NOT EDIT!


#ifndef POSE_GRAPH_TOOLS_MESSAGE_VLCFRAMEQUERYRESPONSE_H
#define POSE_GRAPH_TOOLS_MESSAGE_VLCFRAMEQUERYRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pose_graph_tools/VLCFrameMsg.h>

namespace pose_graph_tools
{
template <class ContainerAllocator>
struct VLCFrameQueryResponse_
{
  typedef VLCFrameQueryResponse_<ContainerAllocator> Type;

  VLCFrameQueryResponse_()
    : frames()  {
    }
  VLCFrameQueryResponse_(const ContainerAllocator& _alloc)
    : frames(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::pose_graph_tools::VLCFrameMsg_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::pose_graph_tools::VLCFrameMsg_<ContainerAllocator> >> _frames_type;
  _frames_type frames;





  typedef boost::shared_ptr< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct VLCFrameQueryResponse_

typedef ::pose_graph_tools::VLCFrameQueryResponse_<std::allocator<void> > VLCFrameQueryResponse;

typedef boost::shared_ptr< ::pose_graph_tools::VLCFrameQueryResponse > VLCFrameQueryResponsePtr;
typedef boost::shared_ptr< ::pose_graph_tools::VLCFrameQueryResponse const> VLCFrameQueryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator1> & lhs, const ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator2> & rhs)
{
  return lhs.frames == rhs.frames;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator1> & lhs, const ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_graph_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1b3cb914841f95b129588855729951ee";
  }

  static const char* value(const ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1b3cb914841f95b1ULL;
  static const uint64_t static_value2 = 0x29588855729951eeULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_graph_tools/VLCFrameQueryResponse";
  }

  static const char* value(const ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_graph_tools/VLCFrameMsg[] frames\n"
"\n"
"================================================================================\n"
"MSG: pose_graph_tools/VLCFrameMsg\n"
"uint32 robot_id\n"
"uint32 pose_id\n"
"uint32 submap_id\n"
"sensor_msgs/Image descriptors_mat          # Descriptor of all keypoints stored as a matrix.\n"
"sensor_msgs/PointCloud2 versors            # Bearing vector of each keypoint expressed as a 3D vector.\n"
"float32[] depths                           # Depth of each keypoint. The 3D keypoint v can be recovered from the depth d and bearing u by v = d * u / u[2]\n"
"geometry_msgs/Pose T_submap_pose\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.frames);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VLCFrameQueryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_graph_tools::VLCFrameQueryResponse_<ContainerAllocator>& v)
  {
    s << indent << "frames[]" << std::endl;
    for (size_t i = 0; i < v.frames.size(); ++i)
    {
      s << indent << "  frames[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pose_graph_tools::VLCFrameMsg_<ContainerAllocator> >::stream(s, indent + "    ", v.frames[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_GRAPH_TOOLS_MESSAGE_VLCFRAMEQUERYRESPONSE_H
