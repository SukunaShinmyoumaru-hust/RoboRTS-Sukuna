# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roborts_msgs/RobotDamage.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RobotDamage(genpy.Message):
  _md5sum = "2bc7f08d7afff0fbeeeb47c67a382a42"
  _type = "roborts_msgs/RobotDamage"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#robot damage
uint8 ARMOR = 0
uint8 OFFLINE = 1
uint8 EXCEED_SHOOT_SPEED = 2
uint8 EXCEED_SHOOT_HEAT = 3
uint8 EXCEED_CHASSIS_POWER = 4
uint8 OBSTACLE_COLLISION = 5
uint8 damage_type

uint8 FORWARD = 0
uint8 LEFT = 1
uint8 BACKWARD = 2
uint8 RIGHT = 3
uint8 damage_source


"""
  # Pseudo-constants
  ARMOR = 0
  OFFLINE = 1
  EXCEED_SHOOT_SPEED = 2
  EXCEED_SHOOT_HEAT = 3
  EXCEED_CHASSIS_POWER = 4
  OBSTACLE_COLLISION = 5
  FORWARD = 0
  LEFT = 1
  BACKWARD = 2
  RIGHT = 3

  __slots__ = ['damage_type','damage_source']
  _slot_types = ['uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       damage_type,damage_source

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotDamage, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.damage_type is None:
        self.damage_type = 0
      if self.damage_source is None:
        self.damage_source = 0
    else:
      self.damage_type = 0
      self.damage_source = 0

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
      buff.write(_get_struct_2B().pack(_x.damage_type, _x.damage_source))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 2
      (_x.damage_type, _x.damage_source,) = _get_struct_2B().unpack(str[start:end])
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
      buff.write(_get_struct_2B().pack(_x.damage_type, _x.damage_source))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 2
      (_x.damage_type, _x.damage_source,) = _get_struct_2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
