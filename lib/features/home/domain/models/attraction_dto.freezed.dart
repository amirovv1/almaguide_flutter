// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attraction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttractionDto _$AttractionDtoFromJson(Map<String, dynamic> json) {
  return _AttractionDto.fromJson(json);
}

/// @nodoc
mixin _$AttractionDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favourite')
  bool? get isFavourite => throw _privateConstructorUsedError;
  @JsonValue('category_icon')
  String? get categoryIcon => throw _privateConstructorUsedError;
  List<DetailsDto>? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'similar_attractions')
  List<AttractionDto>? get similarAttracts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttractionDtoCopyWith<AttractionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttractionDtoCopyWith<$Res> {
  factory $AttractionDtoCopyWith(
          AttractionDto value, $Res Function(AttractionDto) then) =
      _$AttractionDtoCopyWithImpl<$Res, AttractionDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? image,
      String? distance,
      String? description,
      @JsonKey(name: 'is_favourite') bool? isFavourite,
      @JsonValue('category_icon') String? categoryIcon,
      List<DetailsDto>? details,
      @JsonKey(name: 'similar_attractions')
      List<AttractionDto>? similarAttracts});
}

/// @nodoc
class _$AttractionDtoCopyWithImpl<$Res, $Val extends AttractionDto>
    implements $AttractionDtoCopyWith<$Res> {
  _$AttractionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? distance = freezed,
    Object? description = freezed,
    Object? isFavourite = freezed,
    Object? categoryIcon = freezed,
    Object? details = freezed,
    Object? similarAttracts = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailsDto>?,
      similarAttracts: freezed == similarAttracts
          ? _value.similarAttracts
          : similarAttracts // ignore: cast_nullable_to_non_nullable
              as List<AttractionDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttractionDtoImplCopyWith<$Res>
    implements $AttractionDtoCopyWith<$Res> {
  factory _$$AttractionDtoImplCopyWith(
          _$AttractionDtoImpl value, $Res Function(_$AttractionDtoImpl) then) =
      __$$AttractionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? image,
      String? distance,
      String? description,
      @JsonKey(name: 'is_favourite') bool? isFavourite,
      @JsonValue('category_icon') String? categoryIcon,
      List<DetailsDto>? details,
      @JsonKey(name: 'similar_attractions')
      List<AttractionDto>? similarAttracts});
}

/// @nodoc
class __$$AttractionDtoImplCopyWithImpl<$Res>
    extends _$AttractionDtoCopyWithImpl<$Res, _$AttractionDtoImpl>
    implements _$$AttractionDtoImplCopyWith<$Res> {
  __$$AttractionDtoImplCopyWithImpl(
      _$AttractionDtoImpl _value, $Res Function(_$AttractionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? distance = freezed,
    Object? description = freezed,
    Object? isFavourite = freezed,
    Object? categoryIcon = freezed,
    Object? details = freezed,
    Object? similarAttracts = freezed,
  }) {
    return _then(_$AttractionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailsDto>?,
      similarAttracts: freezed == similarAttracts
          ? _value._similarAttracts
          : similarAttracts // ignore: cast_nullable_to_non_nullable
              as List<AttractionDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttractionDtoImpl implements _AttractionDto {
  const _$AttractionDtoImpl(
      {required this.id,
      required this.name,
      this.image,
      this.distance,
      this.description,
      @JsonKey(name: 'is_favourite') this.isFavourite,
      @JsonValue('category_icon') this.categoryIcon,
      final List<DetailsDto>? details,
      @JsonKey(name: 'similar_attractions')
      final List<AttractionDto>? similarAttracts})
      : _details = details,
        _similarAttracts = similarAttracts;

  factory _$AttractionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttractionDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;
  @override
  final String? distance;
  @override
  final String? description;
  @override
  @JsonKey(name: 'is_favourite')
  final bool? isFavourite;
  @override
  @JsonValue('category_icon')
  final String? categoryIcon;
  final List<DetailsDto>? _details;
  @override
  List<DetailsDto>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AttractionDto>? _similarAttracts;
  @override
  @JsonKey(name: 'similar_attractions')
  List<AttractionDto>? get similarAttracts {
    final value = _similarAttracts;
    if (value == null) return null;
    if (_similarAttracts is EqualUnmodifiableListView) return _similarAttracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttractionDto(id: $id, name: $name, image: $image, distance: $distance, description: $description, isFavourite: $isFavourite, categoryIcon: $categoryIcon, details: $details, similarAttracts: $similarAttracts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttractionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            const DeepCollectionEquality()
                .equals(other._similarAttracts, _similarAttracts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      distance,
      description,
      isFavourite,
      categoryIcon,
      const DeepCollectionEquality().hash(_details),
      const DeepCollectionEquality().hash(_similarAttracts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttractionDtoImplCopyWith<_$AttractionDtoImpl> get copyWith =>
      __$$AttractionDtoImplCopyWithImpl<_$AttractionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttractionDtoImplToJson(
      this,
    );
  }
}

abstract class _AttractionDto implements AttractionDto {
  const factory _AttractionDto(
      {required final int id,
      required final String name,
      final String? image,
      final String? distance,
      final String? description,
      @JsonKey(name: 'is_favourite') final bool? isFavourite,
      @JsonValue('category_icon') final String? categoryIcon,
      final List<DetailsDto>? details,
      @JsonKey(name: 'similar_attractions')
      final List<AttractionDto>? similarAttracts}) = _$AttractionDtoImpl;

  factory _AttractionDto.fromJson(Map<String, dynamic> json) =
      _$AttractionDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;
  @override
  String? get distance;
  @override
  String? get description;
  @override
  @JsonKey(name: 'is_favourite')
  bool? get isFavourite;
  @override
  @JsonValue('category_icon')
  String? get categoryIcon;
  @override
  List<DetailsDto>? get details;
  @override
  @JsonKey(name: 'similar_attractions')
  List<AttractionDto>? get similarAttracts;
  @override
  @JsonKey(ignore: true)
  _$$AttractionDtoImplCopyWith<_$AttractionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
