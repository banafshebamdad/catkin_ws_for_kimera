# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: voxblox/Layer.proto

import sys
_b=sys.version_info[0]<3 and (lambda x:x) or (lambda x:x.encode('latin1'))
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='voxblox/Layer.proto',
  package='voxblox',
  syntax='proto2',
  serialized_options=None,
  serialized_pb=_b('\n\x13voxblox/Layer.proto\x12\x07voxblox\"G\n\nLayerProto\x12\x12\n\nvoxel_size\x18\x01 \x01(\x01\x12\x17\n\x0fvoxels_per_side\x18\x02 \x01(\r\x12\x0c\n\x04type\x18\x03 \x01(\t')
)




_LAYERPROTO = _descriptor.Descriptor(
  name='LayerProto',
  full_name='voxblox.LayerProto',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='voxel_size', full_name='voxblox.LayerProto.voxel_size', index=0,
      number=1, type=1, cpp_type=5, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='voxels_per_side', full_name='voxblox.LayerProto.voxels_per_side', index=1,
      number=2, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='type', full_name='voxblox.LayerProto.type', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto2',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=32,
  serialized_end=103,
)

DESCRIPTOR.message_types_by_name['LayerProto'] = _LAYERPROTO
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

LayerProto = _reflection.GeneratedProtocolMessageType('LayerProto', (_message.Message,), dict(
  DESCRIPTOR = _LAYERPROTO,
  __module__ = 'voxblox.Layer_pb2'
  # @@protoc_insertion_point(class_scope:voxblox.LayerProto)
  ))
_sym_db.RegisterMessage(LayerProto)


# @@protoc_insertion_point(module_scope)
