# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_basics_msgs/SimplePose.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import ros_basics_msgs.msg

class SimplePose(genpy.Message):
  _md5sum = "1ca46866baf4abe90def17040f56fbd2"
  _type = "ros_basics_msgs/SimplePose"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point xyz
ros_basics_msgs/RPY rpy
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: ros_basics_msgs/RPY
float64 roll
float64 pitch
float64 yaw"""
  __slots__ = ['xyz','rpy']
  _slot_types = ['geometry_msgs/Point','ros_basics_msgs/RPY']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       xyz,rpy

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SimplePose, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.xyz is None:
        self.xyz = geometry_msgs.msg.Point()
      if self.rpy is None:
        self.rpy = ros_basics_msgs.msg.RPY()
    else:
      self.xyz = geometry_msgs.msg.Point()
      self.rpy = ros_basics_msgs.msg.RPY()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6d().pack(_x.xyz.x, _x.xyz.y, _x.xyz.z, _x.rpy.roll, _x.rpy.pitch, _x.rpy.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.xyz is None:
        self.xyz = geometry_msgs.msg.Point()
      if self.rpy is None:
        self.rpy = ros_basics_msgs.msg.RPY()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.xyz.x, _x.xyz.y, _x.xyz.z, _x.rpy.roll, _x.rpy.pitch, _x.rpy.yaw,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6d().pack(_x.xyz.x, _x.xyz.y, _x.xyz.z, _x.rpy.roll, _x.rpy.pitch, _x.rpy.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.xyz is None:
        self.xyz = geometry_msgs.msg.Point()
      if self.rpy is None:
        self.rpy = ros_basics_msgs.msg.RPY()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.xyz.x, _x.xyz.y, _x.xyz.z, _x.rpy.roll, _x.rpy.pitch, _x.rpy.yaw,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
