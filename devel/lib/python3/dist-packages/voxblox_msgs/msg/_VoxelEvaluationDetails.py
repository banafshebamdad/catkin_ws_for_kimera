# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from voxblox_msgs/VoxelEvaluationDetails.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VoxelEvaluationDetails(genpy.Message):
  _md5sum = "ae63ff7a8fed6761c7b2408516d56b79"
  _type = "voxblox_msgs/VoxelEvaluationDetails"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 max_error
float64 min_error
uint32 num_evaluated_voxels
uint32 num_ignored_voxels
uint32 num_overlapping_voxels
uint32 num_non_overlapping_voxels
"""
  __slots__ = ['max_error','min_error','num_evaluated_voxels','num_ignored_voxels','num_overlapping_voxels','num_non_overlapping_voxels']
  _slot_types = ['float64','float64','uint32','uint32','uint32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       max_error,min_error,num_evaluated_voxels,num_ignored_voxels,num_overlapping_voxels,num_non_overlapping_voxels

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VoxelEvaluationDetails, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.max_error is None:
        self.max_error = 0.
      if self.min_error is None:
        self.min_error = 0.
      if self.num_evaluated_voxels is None:
        self.num_evaluated_voxels = 0
      if self.num_ignored_voxels is None:
        self.num_ignored_voxels = 0
      if self.num_overlapping_voxels is None:
        self.num_overlapping_voxels = 0
      if self.num_non_overlapping_voxels is None:
        self.num_non_overlapping_voxels = 0
    else:
      self.max_error = 0.
      self.min_error = 0.
      self.num_evaluated_voxels = 0
      self.num_ignored_voxels = 0
      self.num_overlapping_voxels = 0
      self.num_non_overlapping_voxels = 0

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
      buff.write(_get_struct_2d4I().pack(_x.max_error, _x.min_error, _x.num_evaluated_voxels, _x.num_ignored_voxels, _x.num_overlapping_voxels, _x.num_non_overlapping_voxels))
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
      end += 32
      (_x.max_error, _x.min_error, _x.num_evaluated_voxels, _x.num_ignored_voxels, _x.num_overlapping_voxels, _x.num_non_overlapping_voxels,) = _get_struct_2d4I().unpack(str[start:end])
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
      buff.write(_get_struct_2d4I().pack(_x.max_error, _x.min_error, _x.num_evaluated_voxels, _x.num_ignored_voxels, _x.num_overlapping_voxels, _x.num_non_overlapping_voxels))
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
      end += 32
      (_x.max_error, _x.min_error, _x.num_evaluated_voxels, _x.num_ignored_voxels, _x.num_overlapping_voxels, _x.num_non_overlapping_voxels,) = _get_struct_2d4I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d4I = None
def _get_struct_2d4I():
    global _struct_2d4I
    if _struct_2d4I is None:
        _struct_2d4I = struct.Struct("<2d4I")
    return _struct_2d4I
