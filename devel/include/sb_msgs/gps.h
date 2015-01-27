// Generated by gencpp from file sb_msgs/gps.msg
// DO NOT EDIT!


#ifndef SB_MSGS_MESSAGE_GPS_H
#define SB_MSGS_MESSAGE_GPS_H


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
struct gps_
{
  typedef gps_<ContainerAllocator> Type;

  gps_()
    : data()
    , compass(0.0)  {
    }
  gps_(const ContainerAllocator& _alloc)
    : data(_alloc)
    , compass(0.0)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  _data_type data;

   typedef double _compass_type;
  _compass_type compass;




  typedef boost::shared_ptr< ::sb_msgs::gps_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sb_msgs::gps_<ContainerAllocator> const> ConstPtr;

}; // struct gps_

typedef ::sb_msgs::gps_<std::allocator<void> > gps;

typedef boost::shared_ptr< ::sb_msgs::gps > gpsPtr;
typedef boost::shared_ptr< ::sb_msgs::gps const> gpsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sb_msgs::gps_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sb_msgs::gps_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sb_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sb_msgs': ['/home/dulluhan/Desktop/ROS_GPS/src/sb_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sb_msgs::gps_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sb_msgs::gps_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sb_msgs::gps_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sb_msgs::gps_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sb_msgs::gps_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sb_msgs::gps_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sb_msgs::gps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4369e7d0238f02434b28b289196c78ce";
  }

  static const char* value(const ::sb_msgs::gps_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4369e7d0238f0243ULL;
  static const uint64_t static_value2 = 0x4b28b289196c78ceULL;
};

template<class ContainerAllocator>
struct DataType< ::sb_msgs::gps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sb_msgs/gps";
  }

  static const char* value(const ::sb_msgs::gps_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sb_msgs::gps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#gps_message \n\
\n\
string data # lat and long in string format\n\
float64 compass # compass direction (angle relative to North)\n\
\n\
";
  }

  static const char* value(const ::sb_msgs::gps_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sb_msgs::gps_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.compass);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct gps_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sb_msgs::gps_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sb_msgs::gps_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.data);
    s << indent << "compass: ";
    Printer<double>::stream(s, indent + "  ", v.compass);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SB_MSGS_MESSAGE_GPS_H