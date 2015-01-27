// Generated by gencpp from file sb_msgs/VisionNav.msg
// DO NOT EDIT!


#ifndef SB_MSGS_MESSAGE_VISIONNAV_H
#define SB_MSGS_MESSAGE_VISIONNAV_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sb_msgs
{
template <class ContainerAllocator>
struct VisionNav_
{
  typedef VisionNav_<ContainerAllocator> Type;

  VisionNav_()
    : confidence(0)
    , direction(0)
    , distance(0)  {
    }
  VisionNav_(const ContainerAllocator& _alloc)
    : confidence(0)
    , direction(0)
    , distance(0)  {
    }



   typedef int32_t _confidence_type;
  _confidence_type confidence;

   typedef int32_t _direction_type;
  _direction_type direction;

   typedef int32_t _distance_type;
  _distance_type distance;




  typedef boost::shared_ptr< ::sb_msgs::VisionNav_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sb_msgs::VisionNav_<ContainerAllocator> const> ConstPtr;

}; // struct VisionNav_

typedef ::sb_msgs::VisionNav_<std::allocator<void> > VisionNav;

typedef boost::shared_ptr< ::sb_msgs::VisionNav > VisionNavPtr;
typedef boost::shared_ptr< ::sb_msgs::VisionNav const> VisionNavConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sb_msgs::VisionNav_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sb_msgs::VisionNav_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sb_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sb_msgs': ['/home/dulluhan/Desktop/ROS_GPS/src/sb_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sb_msgs::VisionNav_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sb_msgs::VisionNav_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sb_msgs::VisionNav_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sb_msgs::VisionNav_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sb_msgs::VisionNav_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sb_msgs::VisionNav_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sb_msgs::VisionNav_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3551098c9d8ba0ab66ec155e8ee6b271";
  }

  static const char* value(const ::sb_msgs::VisionNav_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3551098c9d8ba0abULL;
  static const uint64_t static_value2 = 0x66ec155e8ee6b271ULL;
};

template<class ContainerAllocator>
struct DataType< ::sb_msgs::VisionNav_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sb_msgs/VisionNav";
  }

  static const char* value(const ::sb_msgs::VisionNav_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sb_msgs::VisionNav_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 confidence #a percentage\n\
int32 direction  \n\
int32 distance \n\
";
  }

  static const char* value(const ::sb_msgs::VisionNav_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sb_msgs::VisionNav_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.confidence);
      stream.next(m.direction);
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct VisionNav_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sb_msgs::VisionNav_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sb_msgs::VisionNav_<ContainerAllocator>& v)
  {
    s << indent << "confidence: ";
    Printer<int32_t>::stream(s, indent + "  ", v.confidence);
    s << indent << "direction: ";
    Printer<int32_t>::stream(s, indent + "  ", v.direction);
    s << indent << "distance: ";
    Printer<int32_t>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SB_MSGS_MESSAGE_VISIONNAV_H
