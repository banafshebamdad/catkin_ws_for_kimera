# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pose_graph_tools/PoseGraphQueryRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PoseGraphQueryRequest(genpy.Message):
  _md5sum = "706491581a3d70d6605714be7ea7f612"
  _type = "pose_graph_tools/PoseGraphQueryRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 robot_id
"""
  __slots__ = ['robot_id']
  _slot_types = ['uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       robot_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PoseGraphQueryRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.robot_id is None:
        self.robot_id = 0
    else:
      self.robot_id = 0

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
      _x = self.robot_id
      buff.write(_get_struct_H().pack(_x))
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
      start = end
      end += 2
      (self.robot_id,) = _get_struct_H().unpack(str[start:end])
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
      _x = self.robot_id
      buff.write(_get_struct_H().pack(_x))
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
      start = end
      end += 2
      (self.robot_id,) = _get_struct_H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H = None
def _get_struct_H():
    global _struct_H
    if _struct_H is None:
        _struct_H = struct.Struct("<H")
    return _struct_H
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pose_graph_tools/PoseGraphQueryResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import pose_graph_tools.msg
import std_msgs.msg

class PoseGraphQueryResponse(genpy.Message):
  _md5sum = "c232646d10e49131de5460199de2ac55"
  _type = "pose_graph_tools/PoseGraphQueryResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """pose_graph_tools/PoseGraph pose_graph

================================================================================
MSG: pose_graph_tools/PoseGraph
Header header

# Nodes and edges
PoseGraphNode[] nodes
PoseGraphEdge[] edges
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: pose_graph_tools/PoseGraphNode
Header header

int32 robot_id

uint64 key

geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: pose_graph_tools/PoseGraphEdge
Header header

uint64 key_from
uint64 key_to

int32 robot_from
int32 robot_to

int32 type

# Type enums
int32 ODOM      = 0
int32 LOOPCLOSE = 1
int32 LANDMARK  = 2
int32 REJECTED_LOOPCLOSE = 3
int32 MESH = 4
int32 POSE_MESH = 5
int32 MESH_POSE = 6

# Transforms in ede
geometry_msgs/Pose pose
float64[36] covariance"""
  __slots__ = ['pose_graph']
  _slot_types = ['pose_graph_tools/PoseGraph']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pose_graph

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PoseGraphQueryResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pose_graph is None:
        self.pose_graph = pose_graph_tools.msg.PoseGraph()
    else:
      self.pose_graph = pose_graph_tools.msg.PoseGraph()

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
      buff.write(_get_struct_3I().pack(_x.pose_graph.header.seq, _x.pose_graph.header.stamp.secs, _x.pose_graph.header.stamp.nsecs))
      _x = self.pose_graph.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.pose_graph.nodes)
      buff.write(_struct_I.pack(length))
      for val1 in self.pose_graph.nodes:
        _v1 = val1.header
        _x = _v1.seq
        buff.write(_get_struct_I().pack(_x))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_iQ().pack(_x.robot_id, _x.key))
        _v3 = val1.pose
        _v4 = _v3.position
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v5 = _v3.orientation
        _x = _v5
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      length = len(self.pose_graph.edges)
      buff.write(_struct_I.pack(length))
      for val1 in self.pose_graph.edges:
        _v6 = val1.header
        _x = _v6.seq
        buff.write(_get_struct_I().pack(_x))
        _v7 = _v6.stamp
        _x = _v7
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v6.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2Q3i().pack(_x.key_from, _x.key_to, _x.robot_from, _x.robot_to, _x.type))
        _v8 = val1.pose
        _v9 = _v8.position
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v10 = _v8.orientation
        _x = _v10
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_get_struct_36d().pack(*val1.covariance))
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
      if self.pose_graph is None:
        self.pose_graph = pose_graph_tools.msg.PoseGraph()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.pose_graph.header.seq, _x.pose_graph.header.stamp.secs, _x.pose_graph.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pose_graph.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pose_graph.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pose_graph.nodes = []
      for i in range(0, length):
        val1 = pose_graph_tools.msg.PoseGraphNode()
        _v11 = val1.header
        start = end
        end += 4
        (_v11.seq,) = _get_struct_I().unpack(str[start:end])
        _v12 = _v11.stamp
        _x = _v12
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v11.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v11.frame_id = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.robot_id, _x.key,) = _get_struct_iQ().unpack(str[start:end])
        _v13 = val1.pose
        _v14 = _v13.position
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = _v13.orientation
        _x = _v15
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.pose_graph.nodes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pose_graph.edges = []
      for i in range(0, length):
        val1 = pose_graph_tools.msg.PoseGraphEdge()
        _v16 = val1.header
        start = end
        end += 4
        (_v16.seq,) = _get_struct_I().unpack(str[start:end])
        _v17 = _v16.stamp
        _x = _v17
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v16.frame_id = str[start:end]
        _x = val1
        start = end
        end += 28
        (_x.key_from, _x.key_to, _x.robot_from, _x.robot_to, _x.type,) = _get_struct_2Q3i().unpack(str[start:end])
        _v18 = val1.pose
        _v19 = _v18.position
        _x = _v19
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v20 = _v18.orientation
        _x = _v20
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 288
        val1.covariance = _get_struct_36d().unpack(str[start:end])
        self.pose_graph.edges.append(val1)
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
      buff.write(_get_struct_3I().pack(_x.pose_graph.header.seq, _x.pose_graph.header.stamp.secs, _x.pose_graph.header.stamp.nsecs))
      _x = self.pose_graph.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.pose_graph.nodes)
      buff.write(_struct_I.pack(length))
      for val1 in self.pose_graph.nodes:
        _v21 = val1.header
        _x = _v21.seq
        buff.write(_get_struct_I().pack(_x))
        _v22 = _v21.stamp
        _x = _v22
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v21.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_iQ().pack(_x.robot_id, _x.key))
        _v23 = val1.pose
        _v24 = _v23.position
        _x = _v24
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v25 = _v23.orientation
        _x = _v25
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      length = len(self.pose_graph.edges)
      buff.write(_struct_I.pack(length))
      for val1 in self.pose_graph.edges:
        _v26 = val1.header
        _x = _v26.seq
        buff.write(_get_struct_I().pack(_x))
        _v27 = _v26.stamp
        _x = _v27
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v26.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2Q3i().pack(_x.key_from, _x.key_to, _x.robot_from, _x.robot_to, _x.type))
        _v28 = val1.pose
        _v29 = _v28.position
        _x = _v29
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v30 = _v28.orientation
        _x = _v30
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(val1.covariance.tostring())
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
      if self.pose_graph is None:
        self.pose_graph = pose_graph_tools.msg.PoseGraph()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.pose_graph.header.seq, _x.pose_graph.header.stamp.secs, _x.pose_graph.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pose_graph.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pose_graph.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pose_graph.nodes = []
      for i in range(0, length):
        val1 = pose_graph_tools.msg.PoseGraphNode()
        _v31 = val1.header
        start = end
        end += 4
        (_v31.seq,) = _get_struct_I().unpack(str[start:end])
        _v32 = _v31.stamp
        _x = _v32
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v31.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v31.frame_id = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.robot_id, _x.key,) = _get_struct_iQ().unpack(str[start:end])
        _v33 = val1.pose
        _v34 = _v33.position
        _x = _v34
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v35 = _v33.orientation
        _x = _v35
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.pose_graph.nodes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pose_graph.edges = []
      for i in range(0, length):
        val1 = pose_graph_tools.msg.PoseGraphEdge()
        _v36 = val1.header
        start = end
        end += 4
        (_v36.seq,) = _get_struct_I().unpack(str[start:end])
        _v37 = _v36.stamp
        _x = _v37
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v36.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v36.frame_id = str[start:end]
        _x = val1
        start = end
        end += 28
        (_x.key_from, _x.key_to, _x.robot_from, _x.robot_to, _x.type,) = _get_struct_2Q3i().unpack(str[start:end])
        _v38 = val1.pose
        _v39 = _v38.position
        _x = _v39
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v40 = _v38.orientation
        _x = _v40
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 288
        val1.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
        self.pose_graph.edges.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2Q3i = None
def _get_struct_2Q3i():
    global _struct_2Q3i
    if _struct_2Q3i is None:
        _struct_2Q3i = struct.Struct("<2Q3i")
    return _struct_2Q3i
_struct_36d = None
def _get_struct_36d():
    global _struct_36d
    if _struct_36d is None:
        _struct_36d = struct.Struct("<36d")
    return _struct_36d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_iQ = None
def _get_struct_iQ():
    global _struct_iQ
    if _struct_iQ is None:
        _struct_iQ = struct.Struct("<iQ")
    return _struct_iQ
class PoseGraphQuery(object):
  _type          = 'pose_graph_tools/PoseGraphQuery'
  _md5sum = '40dc150d34e522c5c9dc2d4c5d84a9d7'
  _request_class  = PoseGraphQueryRequest
  _response_class = PoseGraphQueryResponse