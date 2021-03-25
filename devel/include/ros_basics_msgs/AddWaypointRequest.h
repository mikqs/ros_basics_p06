// Generated by gencpp from file ros_basics_msgs/AddWaypointRequest.msg
// DO NOT EDIT!


#ifndef ROS_BASICS_MSGS_MESSAGE_ADDWAYPOINTREQUEST_H
#define ROS_BASICS_MSGS_MESSAGE_ADDWAYPOINTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose2D.h>

namespace ros_basics_msgs
{
template <class ContainerAllocator>
struct AddWaypointRequest_
{
  typedef AddWaypointRequest_<ContainerAllocator> Type;

  AddWaypointRequest_()
    : goal()  {
    }
  AddWaypointRequest_(const ContainerAllocator& _alloc)
    : goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AddWaypointRequest_

typedef ::ros_basics_msgs::AddWaypointRequest_<std::allocator<void> > AddWaypointRequest;

typedef boost::shared_ptr< ::ros_basics_msgs::AddWaypointRequest > AddWaypointRequestPtr;
typedef boost::shared_ptr< ::ros_basics_msgs::AddWaypointRequest const> AddWaypointRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator1> & lhs, const ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator2> & rhs)
{
  return lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator1> & lhs, const ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_basics_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d74cb68b87f4de16729735cf85932163";
  }

  static const char* value(const ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd74cb68b87f4de16ULL;
  static const uint64_t static_value2 = 0x729735cf85932163ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_basics_msgs/AddWaypointRequest";
  }

  static const char* value(const ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose2D goal\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddWaypointRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_basics_msgs::AddWaypointRequest_<ContainerAllocator>& v)
  {
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_BASICS_MSGS_MESSAGE_ADDWAYPOINTREQUEST_H