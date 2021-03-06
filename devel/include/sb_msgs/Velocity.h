// Generated by gencpp from file sb_msgs/Velocity.msg
// DO NOT EDIT!


#ifndef SB_MSGS_MESSAGE_VELOCITY_H
#define SB_MSGS_MESSAGE_VELOCITY_H


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
struct Velocity_
{
  typedef Velocity_<ContainerAllocator> Type;

  Velocity_()
    : xrate(0.0)
    , yrate(0.0)
    , zrate(0.0)
    , rollrate(0.0)
    , pitchrate(0.0)
    , yawrate(0.0)  {
    }
  Velocity_(const ContainerAllocator& _alloc)
    : xrate(0.0)
    , yrate(0.0)
    , zrate(0.0)
    , rollrate(0.0)
    , pitchrate(0.0)
    , yawrate(0.0)  {
    }



   typedef double _xrate_type;
  _xrate_type xrate;

   typedef double _yrate_type;
  _yrate_type yrate;

   typedef double _zrate_type;
  _zrate_type zrate;

   typedef double _rollrate_type;
  _rollrate_type rollrate;

   typedef double _pitchrate_type;
  _pitchrate_type pitchrate;

   typedef double _yawrate_type;
  _yawrate_type yawrate;




  typedef boost::shared_ptr< ::sb_msgs::Velocity_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sb_msgs::Velocity_<ContainerAllocator> const> ConstPtr;

}; // struct Velocity_

typedef ::sb_msgs::Velocity_<std::allocator<void> > Velocity;

typedef boost::shared_ptr< ::sb_msgs::Velocity > VelocityPtr;
typedef boost::shared_ptr< ::sb_msgs::Velocity const> VelocityConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sb_msgs::Velocity_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sb_msgs::Velocity_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::sb_msgs::Velocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sb_msgs::Velocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sb_msgs::Velocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sb_msgs::Velocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sb_msgs::Velocity_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sb_msgs::Velocity_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sb_msgs::Velocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8de9a9274155344335ec8e399f30e54a";
  }

  static const char* value(const ::sb_msgs::Velocity_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8de9a92741553443ULL;
  static const uint64_t static_value2 = 0x35ec8e399f30e54aULL;
};

template<class ContainerAllocator>
struct DataType< ::sb_msgs::Velocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sb_msgs/Velocity";
  }

  static const char* value(const ::sb_msgs::Velocity_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sb_msgs::Velocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 xrate\n\
float64 yrate\n\
float64 zrate\n\
\n\
float64 rollrate\n\
float64 pitchrate\n\
float64 yawrate\n\
";
  }

  static const char* value(const ::sb_msgs::Velocity_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sb_msgs::Velocity_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xrate);
      stream.next(m.yrate);
      stream.next(m.zrate);
      stream.next(m.rollrate);
      stream.next(m.pitchrate);
      stream.next(m.yawrate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Velocity_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sb_msgs::Velocity_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sb_msgs::Velocity_<ContainerAllocator>& v)
  {
    s << indent << "xrate: ";
    Printer<double>::stream(s, indent + "  ", v.xrate);
    s << indent << "yrate: ";
    Printer<double>::stream(s, indent + "  ", v.yrate);
    s << indent << "zrate: ";
    Printer<double>::stream(s, indent + "  ", v.zrate);
    s << indent << "rollrate: ";
    Printer<double>::stream(s, indent + "  ", v.rollrate);
    s << indent << "pitchrate: ";
    Printer<double>::stream(s, indent + "  ", v.pitchrate);
    s << indent << "yawrate: ";
    Printer<double>::stream(s, indent + "  ", v.yawrate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SB_MSGS_MESSAGE_VELOCITY_H
