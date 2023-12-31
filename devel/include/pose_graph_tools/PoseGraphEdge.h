// Generated by gencpp from file pose_graph_tools/PoseGraphEdge.msg
// DO NOT EDIT!


#ifndef POSE_GRAPH_TOOLS_MESSAGE_POSEGRAPHEDGE_H
#define POSE_GRAPH_TOOLS_MESSAGE_POSEGRAPHEDGE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>

namespace pose_graph_tools
{
template <class ContainerAllocator>
struct PoseGraphEdge_
{
  typedef PoseGraphEdge_<ContainerAllocator> Type;

  PoseGraphEdge_()
    : header()
    , key_from(0)
    , key_to(0)
    , robot_from(0)
    , robot_to(0)
    , type(0)
    , pose()
    , covariance()  {
      covariance.assign(0.0);
  }
  PoseGraphEdge_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , key_from(0)
    , key_to(0)
    , robot_from(0)
    , robot_to(0)
    , type(0)
    , pose(_alloc)
    , covariance()  {
  (void)_alloc;
      covariance.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint64_t _key_from_type;
  _key_from_type key_from;

   typedef uint64_t _key_to_type;
  _key_to_type key_to;

   typedef int32_t _robot_from_type;
  _robot_from_type robot_from;

   typedef int32_t _robot_to_type;
  _robot_to_type robot_to;

   typedef int32_t _type_type;
  _type_type type;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef boost::array<double, 36>  _covariance_type;
  _covariance_type covariance;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(ODOM)
  #undef ODOM
#endif
#if defined(_WIN32) && defined(LOOPCLOSE)
  #undef LOOPCLOSE
#endif
#if defined(_WIN32) && defined(LANDMARK)
  #undef LANDMARK
#endif
#if defined(_WIN32) && defined(REJECTED_LOOPCLOSE)
  #undef REJECTED_LOOPCLOSE
#endif
#if defined(_WIN32) && defined(MESH)
  #undef MESH
#endif
#if defined(_WIN32) && defined(POSE_MESH)
  #undef POSE_MESH
#endif
#if defined(_WIN32) && defined(MESH_POSE)
  #undef MESH_POSE
#endif

  enum {
    ODOM = 0,
    LOOPCLOSE = 1,
    LANDMARK = 2,
    REJECTED_LOOPCLOSE = 3,
    MESH = 4,
    POSE_MESH = 5,
    MESH_POSE = 6,
  };


  typedef boost::shared_ptr< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> const> ConstPtr;

}; // struct PoseGraphEdge_

typedef ::pose_graph_tools::PoseGraphEdge_<std::allocator<void> > PoseGraphEdge;

typedef boost::shared_ptr< ::pose_graph_tools::PoseGraphEdge > PoseGraphEdgePtr;
typedef boost::shared_ptr< ::pose_graph_tools::PoseGraphEdge const> PoseGraphEdgeConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator1> & lhs, const ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.key_from == rhs.key_from &&
    lhs.key_to == rhs.key_to &&
    lhs.robot_from == rhs.robot_from &&
    lhs.robot_to == rhs.robot_to &&
    lhs.type == rhs.type &&
    lhs.pose == rhs.pose &&
    lhs.covariance == rhs.covariance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator1> & lhs, const ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_graph_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c891cedd80b91b7f1fa4a46b7d77a19f";
  }

  static const char* value(const ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc891cedd80b91b7fULL;
  static const uint64_t static_value2 = 0x1fa4a46b7d77a19fULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_graph_tools/PoseGraphEdge";
  }

  static const char* value(const ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"uint64 key_from\n"
"uint64 key_to\n"
"\n"
"int32 robot_from\n"
"int32 robot_to\n"
"\n"
"int32 type\n"
"\n"
"# Type enums\n"
"int32 ODOM      = 0\n"
"int32 LOOPCLOSE = 1\n"
"int32 LANDMARK  = 2\n"
"int32 REJECTED_LOOPCLOSE = 3\n"
"int32 MESH = 4\n"
"int32 POSE_MESH = 5\n"
"int32 MESH_POSE = 6\n"
"\n"
"# Transforms in ede\n"
"geometry_msgs/Pose pose\n"
"float64[36] covariance\n"
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

  static const char* value(const ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.key_from);
      stream.next(m.key_to);
      stream.next(m.robot_from);
      stream.next(m.robot_to);
      stream.next(m.type);
      stream.next(m.pose);
      stream.next(m.covariance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseGraphEdge_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_graph_tools::PoseGraphEdge_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "key_from: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.key_from);
    s << indent << "key_to: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.key_to);
    s << indent << "robot_from: ";
    Printer<int32_t>::stream(s, indent + "  ", v.robot_from);
    s << indent << "robot_to: ";
    Printer<int32_t>::stream(s, indent + "  ", v.robot_to);
    s << indent << "type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.type);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "covariance[]" << std::endl;
    for (size_t i = 0; i < v.covariance.size(); ++i)
    {
      s << indent << "  covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.covariance[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_GRAPH_TOOLS_MESSAGE_POSEGRAPHEDGE_H
