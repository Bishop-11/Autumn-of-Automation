// Generated by gencpp from file initials/Euler_Angles.msg
// DO NOT EDIT!


#ifndef INITIALS_MESSAGE_EULER_ANGLES_H
#define INITIALS_MESSAGE_EULER_ANGLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace initials
{
template <class ContainerAllocator>
struct Euler_Angles_
{
  typedef Euler_Angles_<ContainerAllocator> Type;

  Euler_Angles_()
    : roll(0)
    , pitch(0)
    , yaw(0)  {
    }
  Euler_Angles_(const ContainerAllocator& _alloc)
    : roll(0)
    , pitch(0)
    , yaw(0)  {
  (void)_alloc;
    }



   typedef int64_t _roll_type;
  _roll_type roll;

   typedef int64_t _pitch_type;
  _pitch_type pitch;

   typedef int64_t _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::initials::Euler_Angles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::initials::Euler_Angles_<ContainerAllocator> const> ConstPtr;

}; // struct Euler_Angles_

typedef ::initials::Euler_Angles_<std::allocator<void> > Euler_Angles;

typedef boost::shared_ptr< ::initials::Euler_Angles > Euler_AnglesPtr;
typedef boost::shared_ptr< ::initials::Euler_Angles const> Euler_AnglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::initials::Euler_Angles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::initials::Euler_Angles_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace initials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'turtlesim': ['/opt/ros/kinetic/share/turtlesim/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'initials': ['/home/bishop/Aws/src/initials/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::initials::Euler_Angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::initials::Euler_Angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::initials::Euler_Angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::initials::Euler_Angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::initials::Euler_Angles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::initials::Euler_Angles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::initials::Euler_Angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c4aa4458ce92f89616bb6bf530843b96";
  }

  static const char* value(const ::initials::Euler_Angles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc4aa4458ce92f896ULL;
  static const uint64_t static_value2 = 0x16bb6bf530843b96ULL;
};

template<class ContainerAllocator>
struct DataType< ::initials::Euler_Angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "initials/Euler_Angles";
  }

  static const char* value(const ::initials::Euler_Angles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::initials::Euler_Angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 roll\n\
int64 pitch\n\
int64 yaw\n\
\n\
";
  }

  static const char* value(const ::initials::Euler_Angles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::initials::Euler_Angles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Euler_Angles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::initials::Euler_Angles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::initials::Euler_Angles_<ContainerAllocator>& v)
  {
    s << indent << "roll: ";
    Printer<int64_t>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<int64_t>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<int64_t>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INITIALS_MESSAGE_EULER_ANGLES_H
