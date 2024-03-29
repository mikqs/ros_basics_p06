// Generated by gencpp from file ros_basics_msgs/CheckWaypointReachedResponse.msg
// DO NOT EDIT!


#ifndef ROS_BASICS_MSGS_MESSAGE_CHECKWAYPOINTREACHEDRESPONSE_H
#define ROS_BASICS_MSGS_MESSAGE_CHECKWAYPOINTREACHEDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_basics_msgs
{
template <class ContainerAllocator>
struct CheckWaypointReachedResponse_
{
  typedef CheckWaypointReachedResponse_<ContainerAllocator> Type;

  CheckWaypointReachedResponse_()
    : reached(false)  {
    }
  CheckWaypointReachedResponse_(const ContainerAllocator& _alloc)
    : reached(false)  {
  (void)_alloc;
    }



   typedef uint8_t _reached_type;
  _reached_type reached;





  typedef boost::shared_ptr< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CheckWaypointReachedResponse_

typedef ::ros_basics_msgs::CheckWaypointReachedResponse_<std::allocator<void> > CheckWaypointReachedResponse;

typedef boost::shared_ptr< ::ros_basics_msgs::CheckWaypointReachedResponse > CheckWaypointReachedResponsePtr;
typedef boost::shared_ptr< ::ros_basics_msgs::CheckWaypointReachedResponse const> CheckWaypointReachedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator1> & lhs, const ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator2> & rhs)
{
  return lhs.reached == rhs.reached;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator1> & lhs, const ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_basics_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "80204a6ff2622a7071680d5597cbd3aa";
  }

  static const char* value(const ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x80204a6ff2622a70ULL;
  static const uint64_t static_value2 = 0x71680d5597cbd3aaULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_basics_msgs/CheckWaypointReachedResponse";
  }

  static const char* value(const ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool reached\n"
;
  }

  static const char* value(const ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reached);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckWaypointReachedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_basics_msgs::CheckWaypointReachedResponse_<ContainerAllocator>& v)
  {
    s << indent << "reached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reached);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_BASICS_MSGS_MESSAGE_CHECKWAYPOINTREACHEDRESPONSE_H
