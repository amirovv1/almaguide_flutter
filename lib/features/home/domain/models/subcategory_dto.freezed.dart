// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategory_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubcategoryDto _$SubcategoryDtoFromJson(Map<String, dynamic> json) {
  return _SubcategoryDto.fromJson(json);
}

/// @nodoc
mixin _$SubcategoryDto {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  CategoryDto get category => throw _privateConstructorUsedError;
  List<AttractionDto> get attractions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubcategoryDtoCopyWith<SubcategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryDtoCopyWith<$Res> {
  factory $SubcategoryDtoCopyWith(
          SubcategoryDto value, $Res Function(SubcategoryDto) then) =
      _$SubcategoryDtoCopyWithImpl<$Res, SubcategoryDto>;
  @useResult
  $Res call(
      {int id,
      String? name,
      CategoryDto category,
      List<AttractionDto> attractions});

  $CategoryDtoCopyWith<$Res> get category;
}

/// @nodoc
class _$SubcategoryDtoCopyWithImpl<$Res, $Val extends SubcategoryDto>
    implements $SubcategoryDtoCopyWith<$Res> {
  _$SubcategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? category = null,
    Object? attractions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      attractions: null == attractions
          ? _value.attractions
          : attractions // ignore: cast_nullable_to_non_nullable
              as List<AttractionDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res> get category {
    return $CategoryDtoCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubcategoryDtoImplCopyWith<$Res>
    implements $SubcategoryDtoCopyWith<$Res> {
  factory _$$SubcategoryDtoImplCopyWith(_$SubcategoryDtoImpl value,
          $Res Function(_$SubcategoryDtoImpl) then) =
      __$$SubcategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      CategoryDto category,
      List<AttractionDto> attractions});

  @override
  $CategoryDtoCopyWith<$Res> get category;
}

/// @nodoc
class __$$SubcategoryDtoImplCopyWithImpl<$Res>
    extends _$SubcategoryDtoCopyWithImpl<$Res, _$SubcategoryDtoImpl>
    implements _$$SubcategoryDtoImplCopyWith<$Res> {
  __$$SubcategoryDtoImplCopyWithImpl(
      _$SubcategoryDtoImpl _value, $Res Function(_$SubcategoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? category = null,
    Object? attractions = null,
  }) {
    return _then(_$SubcategoryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      attractions: null == attractions
          ? _value._attractions
          : attractions // ignore: cast_nullable_to_non_nullable
              as List<AttractionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubcategoryDtoImpl implements _SubcategoryDto {
  const _$SubcategoryDtoImpl(
      {required this.id,
      this.name,
      required this.category,
      required final List<AttractionDto> attractions})
      : _attractions = attractions;

  factory _$SubcategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubcategoryDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final CategoryDto category;
  final List<AttractionDto> _attractions;
  @override
  List<AttractionDto> get attractions {
    if (_attractions is EqualUnmodifiableListView) return _attractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attractions);
  }

  @override
  String toString() {
    return 'SubcategoryDto(id: $id, name: $name, category: $category, attractions: $attractions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._attractions, _attractions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, category,
      const DeepCollectionEquality().hash(_attractions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryDtoImplCopyWith<_$SubcategoryDtoImpl> get copyWith =>
      __$$SubcategoryDtoImplCopyWithImpl<_$SubcategoryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubcategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _SubcategoryDto implements SubcategoryDto {
  const factory _SubcategoryDto(
      {required final int id,
      final String? name,
      required final CategoryDto category,
      required final List<AttractionDto> attractions}) = _$SubcategoryDtoImpl;

  factory _SubcategoryDto.fromJson(Map<String, dynamic> json) =
      _$SubcategoryDtoImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  CategoryDto get category;
  @override
  List<AttractionDto> get attractions;
  @override
  @JsonKey(ignore: true)
  _$$SubcategoryDtoImplCopyWith<_$SubcategoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
