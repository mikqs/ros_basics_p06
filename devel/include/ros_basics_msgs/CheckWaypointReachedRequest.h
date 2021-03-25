// Generated by gencpp from file ros_basics_msgs/CheckWaypointReachedRequest.msg
// DO NOT EDIT!


#ifndef ROS_BASICS_MSGS_MESSAGE_CHECKWAYPOINTREACHEDREQUEST_H
#define ROS_BASICS_MSGS_MESSAGE_CHECKWAYPOINTREACHEDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ros_basics_msgs/SimplePoseStamped.h>

namespace ros_basics_msgs
{
template <class ContainerAllocator>
struct CheckWaypointReachedRequest_
{
  typedef CheckWaypointReachedRequest_<ContainerAllocator> Type;

  CheckWaypointReachedRequest_()
    : pose()
    , verbose(false)  {
    }
  CheckWaypointReachedRequest_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , verbose(false)  {
  (void)_alloc;
    }



   typedef  ::ros_basics_msgs::SimplePoseStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef uint8_t _verbose_type;
  _verbose_type verbose;





  typedef boost::shared_ptr< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CheckWaypointReachedRequest_

typedef ::ros_basics_msgs::CheckWaypointReachedRequest_<std::allocator<void> > CheckWaypointReachedRequest;

typedef boost::shared_ptr< ::ros_basics_msgs::CheckWaypointReachedRequest > CheckWaypointReachedRequestPtr;
typedef boost::shared_ptr< ::ros_basics_msgs::CheckWaypointReachedRequest const> CheckWaypointReachedRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator1> & lhs, const ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose &&
    lhs.verbose == rhs.verbose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator1> & lhs, const ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_basics_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1aa5caaaa46dfadf42e81cbbe38ef1c3";
  }

  static const char* value(const ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1aa5caaaa46dfadfULL;
  static const uint64_t static_value2 = 0x42e81cbbe38ef1c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_basics_msgs/CheckWaypointReachedRequest";
  }

  static const char* value(const ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "SimplePoseStamped pose\n"
"bool verbose\n"
"\n"
"================================================================================\n"
"MSG: ros_basics_msgs/SimplePoseStamped\n"
"Header header\n"
"ros_basics_msgs/SimplePose pose\n"
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
"MSG: ros_basics_msgs/SimplePose\n"
"geometry_msgs/Point xyz\n"
"ros_basics_msgs/RPY rpy\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: ros_basics_msgs/RPY\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
;
  }

  static const char* value(const ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.verbose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckWaypointReachedRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_basics_msgs::CheckWaypointReachedRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::ros_basics_msgs::SimplePoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "verbose: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.verbose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_BASICS_MSGS_MESSAGE_CHECKWAYPOINTREACHEDREQUEST_H
