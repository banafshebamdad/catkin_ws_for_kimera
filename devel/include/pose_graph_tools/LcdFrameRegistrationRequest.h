// Generated by gencpp from file pose_graph_tools/LcdFrameRegistrationRequest.msg
// DO NOT EDIT!


#ifndef POSE_GRAPH_TOOLS_MESSAGE_LCDFRAMEREGISTRATIONREQUEST_H
#define POSE_GRAPH_TOOLS_MESSAGE_LCDFRAMEREGISTRATIONREQUEST_H


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
struct LcdFrameRegistrationRequest_
{
  typedef LcdFrameRegistrationRequest_<ContainerAllocator> Type;

  LcdFrameRegistrationRequest_()
    : query_robot(0)
    , match_robot(0)
    , query(0)
    , match(0)  {
    }
  LcdFrameRegistrationRequest_(const ContainerAllocator& _alloc)
    : query_robot(0)
    , match_robot(0)
    , query(0)
    , match(0)  {
  (void)_alloc;
    }



   typedef uint64_t _query_robot_type;
  _query_robot_type query_robot;

   typedef uint64_t _match_robot_type;
  _match_robot_type match_robot;

   typedef uint64_t _query_type;
  _query_type query;

   typedef uint64_t _match_type;
  _match_type match;





  typedef boost::shared_ptr< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LcdFrameRegistrationRequest_

typedef ::pose_graph_tools::LcdFrameRegistrationRequest_<std::allocator<void> > LcdFrameRegistrationRequest;

typedef boost::shared_ptr< ::pose_graph_tools::LcdFrameRegistrationRequest > LcdFrameRegistrationRequestPtr;
typedef boost::shared_ptr< ::pose_graph_tools::LcdFrameRegistrationRequest const> LcdFrameRegistrationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator1> & lhs, const ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.query_robot == rhs.query_robot &&
    lhs.match_robot == rhs.match_robot &&
    lhs.query == rhs.query &&
    lhs.match == rhs.match;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator1> & lhs, const ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_graph_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c70b0c2140c92a1e48918c9a269225fc";
  }

  static const char* value(const ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc70b0c2140c92a1eULL;
  static const uint64_t static_value2 = 0x48918c9a269225fcULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_graph_tools/LcdFrameRegistrationRequest";
  }

  static const char* value(const ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 query_robot\n"
"uint64 match_robot\n"
"uint64 query\n"
"uint64 match\n"
;
  }

  static const char* value(const ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.query_robot);
      stream.next(m.match_robot);
      stream.next(m.query);
      stream.next(m.match);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LcdFrameRegistrationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_graph_tools::LcdFrameRegistrationRequest_<ContainerAllocator>& v)
  {
    s << indent << "query_robot: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.query_robot);
    s << indent << "match_robot: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.match_robot);
    s << indent << "query: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.query);
    s << indent << "match: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.match);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_GRAPH_TOOLS_MESSAGE_LCDFRAMEREGISTRATIONREQUEST_H
