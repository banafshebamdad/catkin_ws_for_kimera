// Generated by gencpp from file pose_graph_tools/BowRequests.msg
// DO NOT EDIT!


#ifndef POSE_GRAPH_TOOLS_MESSAGE_BOWREQUESTS_H
#define POSE_GRAPH_TOOLS_MESSAGE_BOWREQUESTS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace pose_graph_tools
{
template <class ContainerAllocator>
struct BowRequests_
{
  typedef BowRequests_<ContainerAllocator> Type;

  BowRequests_()
    : header()
    , source_robot_id(0)
    , destination_robot_id(0)
    , pose_ids()  {
    }
  BowRequests_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , source_robot_id(0)
    , destination_robot_id(0)
    , pose_ids(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _source_robot_id_type;
  _source_robot_id_type source_robot_id;

   typedef uint32_t _destination_robot_id_type;
  _destination_robot_id_type destination_robot_id;

   typedef std::vector<uint32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint32_t>> _pose_ids_type;
  _pose_ids_type pose_ids;





  typedef boost::shared_ptr< ::pose_graph_tools::BowRequests_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_graph_tools::BowRequests_<ContainerAllocator> const> ConstPtr;

}; // struct BowRequests_

typedef ::pose_graph_tools::BowRequests_<std::allocator<void> > BowRequests;

typedef boost::shared_ptr< ::pose_graph_tools::BowRequests > BowRequestsPtr;
typedef boost::shared_ptr< ::pose_graph_tools::BowRequests const> BowRequestsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_graph_tools::BowRequests_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_graph_tools::BowRequests_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_graph_tools::BowRequests_<ContainerAllocator1> & lhs, const ::pose_graph_tools::BowRequests_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.source_robot_id == rhs.source_robot_id &&
    lhs.destination_robot_id == rhs.destination_robot_id &&
    lhs.pose_ids == rhs.pose_ids;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_graph_tools::BowRequests_<ContainerAllocator1> & lhs, const ::pose_graph_tools::BowRequests_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_graph_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::BowRequests_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::BowRequests_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::BowRequests_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::BowRequests_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::BowRequests_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::BowRequests_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_graph_tools::BowRequests_<ContainerAllocator> >
{
  static const char* value()
  {
    return "772d3c253526173250ad7a3a53433c14";
  }

  static const char* value(const ::pose_graph_tools::BowRequests_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x772d3c2535261732ULL;
  static const uint64_t static_value2 = 0x50ad7a3a53433c14ULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_graph_tools::BowRequests_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_graph_tools/BowRequests";
  }

  static const char* value(const ::pose_graph_tools::BowRequests_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_graph_tools::BowRequests_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"uint32 source_robot_id         # Robot that sends this request\n"
"uint32 destination_robot_id    # Robot that receives this request\n"
"uint32[] pose_ids              # Pose IDs of requested BoW of the destination robot \n"
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
;
  }

  static const char* value(const ::pose_graph_tools::BowRequests_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_graph_tools::BowRequests_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.source_robot_id);
      stream.next(m.destination_robot_id);
      stream.next(m.pose_ids);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BowRequests_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_graph_tools::BowRequests_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_graph_tools::BowRequests_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "source_robot_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.source_robot_id);
    s << indent << "destination_robot_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.destination_robot_id);
    s << indent << "pose_ids[]" << std::endl;
    for (size_t i = 0; i < v.pose_ids.size(); ++i)
    {
      s << indent << "  pose_ids[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.pose_ids[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_GRAPH_TOOLS_MESSAGE_BOWREQUESTS_H
