// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: voxblox/Layer.proto

#ifndef PROTOBUF_INCLUDED_voxblox_2fLayer_2eproto
#define PROTOBUF_INCLUDED_voxblox_2fLayer_2eproto

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 3006001
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 3006001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_table_driven.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/inlined_string_field.h>
#include <google/protobuf/metadata.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)
#define PROTOBUF_INTERNAL_EXPORT_protobuf_voxblox_2fLayer_2eproto 

namespace protobuf_voxblox_2fLayer_2eproto {
// Internal implementation detail -- do not use these members.
struct TableStruct {
  static const ::google::protobuf::internal::ParseTableField entries[];
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[];
  static const ::google::protobuf::internal::ParseTable schema[1];
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static const ::google::protobuf::uint32 offsets[];
};
void AddDescriptors();
}  // namespace protobuf_voxblox_2fLayer_2eproto
namespace voxblox {
class LayerProto;
class LayerProtoDefaultTypeInternal;
extern LayerProtoDefaultTypeInternal _LayerProto_default_instance_;
}  // namespace voxblox
namespace google {
namespace protobuf {
template<> ::voxblox::LayerProto* Arena::CreateMaybeMessage<::voxblox::LayerProto>(Arena*);
}  // namespace protobuf
}  // namespace google
namespace voxblox {

// ===================================================================

class LayerProto : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:voxblox.LayerProto) */ {
 public:
  LayerProto();
  virtual ~LayerProto();

  LayerProto(const LayerProto& from);

  inline LayerProto& operator=(const LayerProto& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  LayerProto(LayerProto&& from) noexcept
    : LayerProto() {
    *this = ::std::move(from);
  }

  inline LayerProto& operator=(LayerProto&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _internal_metadata_.unknown_fields();
  }
  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return _internal_metadata_.mutable_unknown_fields();
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const LayerProto& default_instance();

  static void InitAsDefaultInstance();  // FOR INTERNAL USE ONLY
  static inline const LayerProto* internal_default_instance() {
    return reinterpret_cast<const LayerProto*>(
               &_LayerProto_default_instance_);
  }
  static constexpr int kIndexInFileMessages =
    0;

  void Swap(LayerProto* other);
  friend void swap(LayerProto& a, LayerProto& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline LayerProto* New() const final {
    return CreateMaybeMessage<LayerProto>(NULL);
  }

  LayerProto* New(::google::protobuf::Arena* arena) const final {
    return CreateMaybeMessage<LayerProto>(arena);
  }
  void CopyFrom(const ::google::protobuf::Message& from) final;
  void MergeFrom(const ::google::protobuf::Message& from) final;
  void CopyFrom(const LayerProto& from);
  void MergeFrom(const LayerProto& from);
  void Clear() final;
  bool IsInitialized() const final;

  size_t ByteSizeLong() const final;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) final;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const final;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const final;
  int GetCachedSize() const final { return _cached_size_.Get(); }

  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const final;
  void InternalSwap(LayerProto* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const final;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // optional string type = 3;
  bool has_type() const;
  void clear_type();
  static const int kTypeFieldNumber = 3;
  const ::std::string& type() const;
  void set_type(const ::std::string& value);
  #if LANG_CXX11
  void set_type(::std::string&& value);
  #endif
  void set_type(const char* value);
  void set_type(const char* value, size_t size);
  ::std::string* mutable_type();
  ::std::string* release_type();
  void set_allocated_type(::std::string* type);

  // optional double voxel_size = 1;
  bool has_voxel_size() const;
  void clear_voxel_size();
  static const int kVoxelSizeFieldNumber = 1;
  double voxel_size() const;
  void set_voxel_size(double value);

  // optional uint32 voxels_per_side = 2;
  bool has_voxels_per_side() const;
  void clear_voxels_per_side();
  static const int kVoxelsPerSideFieldNumber = 2;
  ::google::protobuf::uint32 voxels_per_side() const;
  void set_voxels_per_side(::google::protobuf::uint32 value);

  // @@protoc_insertion_point(class_scope:voxblox.LayerProto)
 private:
  void set_has_voxel_size();
  void clear_has_voxel_size();
  void set_has_voxels_per_side();
  void clear_has_voxels_per_side();
  void set_has_type();
  void clear_has_type();

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::internal::HasBits<1> _has_bits_;
  mutable ::google::protobuf::internal::CachedSize _cached_size_;
  ::google::protobuf::internal::ArenaStringPtr type_;
  double voxel_size_;
  ::google::protobuf::uint32 voxels_per_side_;
  friend struct ::protobuf_voxblox_2fLayer_2eproto::TableStruct;
};
// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// LayerProto

// optional double voxel_size = 1;
inline bool LayerProto::has_voxel_size() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void LayerProto::set_has_voxel_size() {
  _has_bits_[0] |= 0x00000002u;
}
inline void LayerProto::clear_has_voxel_size() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void LayerProto::clear_voxel_size() {
  voxel_size_ = 0;
  clear_has_voxel_size();
}
inline double LayerProto::voxel_size() const {
  // @@protoc_insertion_point(field_get:voxblox.LayerProto.voxel_size)
  return voxel_size_;
}
inline void LayerProto::set_voxel_size(double value) {
  set_has_voxel_size();
  voxel_size_ = value;
  // @@protoc_insertion_point(field_set:voxblox.LayerProto.voxel_size)
}

// optional uint32 voxels_per_side = 2;
inline bool LayerProto::has_voxels_per_side() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void LayerProto::set_has_voxels_per_side() {
  _has_bits_[0] |= 0x00000004u;
}
inline void LayerProto::clear_has_voxels_per_side() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void LayerProto::clear_voxels_per_side() {
  voxels_per_side_ = 0u;
  clear_has_voxels_per_side();
}
inline ::google::protobuf::uint32 LayerProto::voxels_per_side() const {
  // @@protoc_insertion_point(field_get:voxblox.LayerProto.voxels_per_side)
  return voxels_per_side_;
}
inline void LayerProto::set_voxels_per_side(::google::protobuf::uint32 value) {
  set_has_voxels_per_side();
  voxels_per_side_ = value;
  // @@protoc_insertion_point(field_set:voxblox.LayerProto.voxels_per_side)
}

// optional string type = 3;
inline bool LayerProto::has_type() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void LayerProto::set_has_type() {
  _has_bits_[0] |= 0x00000001u;
}
inline void LayerProto::clear_has_type() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void LayerProto::clear_type() {
  type_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  clear_has_type();
}
inline const ::std::string& LayerProto::type() const {
  // @@protoc_insertion_point(field_get:voxblox.LayerProto.type)
  return type_.GetNoArena();
}
inline void LayerProto::set_type(const ::std::string& value) {
  set_has_type();
  type_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:voxblox.LayerProto.type)
}
#if LANG_CXX11
inline void LayerProto::set_type(::std::string&& value) {
  set_has_type();
  type_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:voxblox.LayerProto.type)
}
#endif
inline void LayerProto::set_type(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  set_has_type();
  type_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:voxblox.LayerProto.type)
}
inline void LayerProto::set_type(const char* value, size_t size) {
  set_has_type();
  type_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:voxblox.LayerProto.type)
}
inline ::std::string* LayerProto::mutable_type() {
  set_has_type();
  // @@protoc_insertion_point(field_mutable:voxblox.LayerProto.type)
  return type_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* LayerProto::release_type() {
  // @@protoc_insertion_point(field_release:voxblox.LayerProto.type)
  if (!has_type()) {
    return NULL;
  }
  clear_has_type();
  return type_.ReleaseNonDefaultNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void LayerProto::set_allocated_type(::std::string* type) {
  if (type != NULL) {
    set_has_type();
  } else {
    clear_has_type();
  }
  type_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), type);
  // @@protoc_insertion_point(field_set_allocated:voxblox.LayerProto.type)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace voxblox

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_INCLUDED_voxblox_2fLayer_2eproto
