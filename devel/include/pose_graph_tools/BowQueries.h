// Generated by gencpp from file pose_graph_tools/BowQueries.msg
// DO NOT EDIT!


#ifndef POSE_GRAPH_TOOLS_MESSAGE_BOWQUERIES_H
#define POSE_GRAPH_TOOLS_MESSAGE_BOWQUERIES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <pose_graph_tools/BowQuery.h>

namespace pose_graph_tools
{
template <class ContainerAllocator>
struct BowQueries_
{
  typedef BowQueries_<ContainerAllocator> Type;

  BowQueries_()
    : header()
    , destination_robot_id(0)
    , queries()  {
    }
  BowQueries_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , destination_robot_id(0)
    , queries(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _destination_robot_id_type;
  _destination_robot_id_type destination_robot_id;

   typedef std::vector< ::pose_graph_tools::BowQuery_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::pose_graph_tools::BowQuery_<ContainerAllocator> >> _queries_type;
  _queries_type queries;





  typedef boost::shared_ptr< ::pose_graph_tools::BowQueries_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_graph_tools::BowQueries_<ContainerAllocator> const> ConstPtr;

}; // struct BowQueries_

typedef ::pose_graph_tools::BowQueries_<std::allocator<void> > BowQueries;

typedef boost::shared_ptr< ::pose_graph_tools::BowQueries > BowQueriesPtr;
typedef boost::shared_ptr< ::pose_graph_tools::BowQueries const> BowQueriesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_graph_tools::BowQueries_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_graph_tools::BowQueries_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_graph_tools::BowQueries_<ContainerAllocator1> & lhs, const ::pose_graph_tools::BowQueries_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.destination_robot_id == rhs.destination_robot_id &&
    lhs.queries == rhs.queries;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_graph_tools::BowQueries_<ContainerAllocator1> & lhs, const ::pose_graph_tools::BowQueries_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_graph_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::BowQueries_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_graph_tools::BowQueries_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::BowQueries_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_tools::BowQueries_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::BowQueries_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_tools::BowQueries_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_graph_tools::BowQueries_<ContainerAllocator> >
{
  static const char* value()
  {
    return "80b67ea7bb31f6bc0188a59d8ca2119d";
  }

  static const char* value(const ::pose_graph_tools::BowQueries_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x80b67ea7bb31f6bcULL;
  static const uint64_t static_value2 = 0x0188a59d8ca2119dULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_graph_tools::BowQueries_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_graph_tools/BowQueries";
  }

  static const char* value(const ::pose_graph_tools::BowQueries_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_graph_tools::BowQueries_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"uint32 destination_robot_id\n"
"pose_graph_tools/BowQuery[] queries\n"
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
"MSG: pose_graph_tools/BowQuery\n"
"uint32 robot_id\n"
"uint32 pose_id\n"
"BowVector bow_vector\n"
"================================================================================\n"
"MSG: pose_graph_tools/BowVector\n"
"uint32[] word_ids\n"
"float32[] word_values\n"
;
  }

  static const char* value(const ::pose_graph_tools::BowQueries_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_graph_tools::BowQueries_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.destination_robot_id);
      stream.next(m.queries);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BowQueries_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_graph_tools::BowQueries_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_graph_tools::BowQueries_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "destination_robot_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.destination_robot_id);
    s << indent << "queries[]" << std::endl;
    for (size_t i = 0; i < v.queries.size(); ++i)
    {
      s << indent << "  queries[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pose_graph_tools::BowQuery_<ContainerAllocator> >::stream(s, indent + "    ", v.queries[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_GRAPH_TOOLS_MESSAGE_BOWQUERIES_H
