// Generated by gencpp from file pose_graph_tools/PoseGraphQueryRequest.msg
// DO NOT EDIT!


#ifndef POSE_GRAPH_TOOLS_MESSAGE_POSEGRAPHQUERYREQUEST_H
#define POSE_GRAPH_TOOLS_MESSAGE_POSEGRAPHQUERYREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pose_graph_tools
{
template <class ContainerAllocator>
struct PoseGraphQueryRequest_
{
  typedef PoseGraphQueryRequest_<ContainerAllocator> Type;

  PoseGraphQueryRequest_()
    : robot_id(0)  {
    }
  PoseGraphQueryRequest_(const ContainerAllocator& _alloc)
    : robot_id(0)  {
  (void)_alloc;
    }



   typedef uint16_t _robot_id_type;
  _robot_id_type robot_id;





  typedef boost::shared_ptr< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PoseGraphQueryRequest_

typedef ::pose_graph_tools::PoseGraphQueryRequest_<std::allocator<void> > PoseGraphQueryRequest;

typedef boost::shared_ptr< ::pose_graph_tools::PoseGraphQueryRequest > PoseGraphQueryRequestPtr;
typedef boost::shared_ptr< ::pose_graph_tools::PoseGraphQueryRequest const> PoseGraphQueryRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator1> & lhs, const ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator2> & rhs)
{
  return lhs.robot_id == rhs.robot_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator1> & lhs, const ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_graph_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "706491581a3d70d6605714be7ea7f612";
  }

  static const char* value(const ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x706491581a3d70d6ULL;
  static const uint64_t static_value2 = 0x605714be7ea7f612ULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_graph_tools/PoseGraphQueryRequest";
  }

  static const char* value(const ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 robot_id\n"
;
  }

  static const char* value(const ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseGraphQueryRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_graph_tools::PoseGraphQueryRequest_<ContainerAllocator>& v)
  {
    s << indent << "robot_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.robot_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_GRAPH_TOOLS_MESSAGE_POSEGRAPHQUERYREQUEST_H
