// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoryDto _$StoryDtoFromJson(Map<String, dynamic> json) {
  return _StoryDto.fromJson(json);
}

/// @nodoc
mixin _$StoryDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get uploadedFile => throw _privateConstructorUsedError;
  @JsonValue('seen_count')
  int? get seenCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryDtoCopyWith<StoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryDtoCopyWith<$Res> {
  factory $StoryDtoCopyWith(StoryDto value, $Res Function(StoryDto) then) =
      _$StoryDtoCopyWithImpl<$Res, StoryDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? uploadedFile,
      @JsonValue('seen_count') int? seenCount});
}

/// @nodoc
class _$StoryDtoCopyWithImpl<$Res, $Val extends StoryDto>
    implements $StoryDtoCopyWith<$Res> {
  _$StoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? uploadedFile = freezed,
    Object? seenCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedFile: freezed == uploadedFile
          ? _value.uploadedFile
          : uploadedFile // ignore: cast_nullable_to_non_nullable
              as String?,
      seenCount: freezed == seenCount
          ? _value.seenCount
          : seenCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryDtoImplCopyWith<$Res>
    implements $StoryDtoCopyWith<$Res> {
  factory _$$StoryDtoImplCopyWith(
          _$StoryDtoImpl value, $Res Function(_$StoryDtoImpl) then) =
      __$$StoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? uploadedFile,
      @JsonValue('seen_count') int? seenCount});
}

/// @nodoc
class __$$StoryDtoImplCopyWithImpl<$Res>
    extends _$StoryDtoCopyWithImpl<$Res, _$StoryDtoImpl>
    implements _$$StoryDtoImplCopyWith<$Res> {
  __$$StoryDtoImplCopyWithImpl(
      _$StoryDtoImpl _value, $Res Function(_$StoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? uploadedFile = freezed,
    Object? seenCount = freezed,
  }) {
    return _then(_$StoryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedFile: freezed == uploadedFile
          ? _value.uploadedFile
          : uploadedFile // ignore: cast_nullable_to_non_nullable
              as String?,
      seenCount: freezed == seenCount
          ? _value.seenCount
          : seenCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryDtoImpl implements _StoryDto {
  const _$StoryDtoImpl(
      {required this.id,
      required this.title,
      this.uploadedFile,
      @JsonValue('seen_count') this.seenCount});

  factory _$StoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? uploadedFile;
  @override
  @JsonValue('seen_count')
  final int? seenCount;

  @override
  String toString() {
    return 'StoryDto(id: $id, title: $title, uploadedFile: $uploadedFile, seenCount: $seenCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.uploadedFile, uploadedFile) ||
                other.uploadedFile == uploadedFile) &&
            (identical(other.seenCount, seenCount) ||
                other.seenCount == seenCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, uploadedFile, seenCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryDtoImplCopyWith<_$StoryDtoImpl> get copyWith =>
      __$$StoryDtoImplCopyWithImpl<_$StoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryDtoImplToJson(
      this,
    );
  }
}

abstract class _StoryDto implements StoryDto {
  const factory _StoryDto(
      {required final int id,
      required final String title,
      final String? uploadedFile,
      @JsonValue('seen_count') final int? seenCount}) = _$StoryDtoImpl;

  factory _StoryDto.fromJson(Map<String, dynamic> json) =
      _$StoryDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get uploadedFile;
  @override
  @JsonValue('seen_count')
  int? get seenCount;
  @override
  @JsonKey(ignore: true)
  _$$StoryDtoImplCopyWith<_$StoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
