// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsDto _$DetailsDtoFromJson(Map<String, dynamic> json) {
  return _DetailsDto.fromJson(json);
}

/// @nodoc
mixin _$DetailsDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_type')
  ValueType get valueType => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsDtoCopyWith<DetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsDtoCopyWith<$Res> {
  factory $DetailsDtoCopyWith(
          DetailsDto value, $Res Function(DetailsDto) then) =
      _$DetailsDtoCopyWithImpl<$Res, DetailsDto>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'value_type') ValueType valueType,
      String value});
}

/// @nodoc
class _$DetailsDtoCopyWithImpl<$Res, $Val extends DetailsDto>
    implements $DetailsDtoCopyWith<$Res> {
  _$DetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? valueType = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsDtoImplCopyWith<$Res>
    implements $DetailsDtoCopyWith<$Res> {
  factory _$$DetailsDtoImplCopyWith(
          _$DetailsDtoImpl value, $Res Function(_$DetailsDtoImpl) then) =
      __$$DetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'value_type') ValueType valueType,
      String value});
}

/// @nodoc
class __$$DetailsDtoImplCopyWithImpl<$Res>
    extends _$DetailsDtoCopyWithImpl<$Res, _$DetailsDtoImpl>
    implements _$$DetailsDtoImplCopyWith<$Res> {
  __$$DetailsDtoImplCopyWithImpl(
      _$DetailsDtoImpl _value, $Res Function(_$DetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? valueType = null,
    Object? value = null,
  }) {
    return _then(_$DetailsDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsDtoImpl implements _DetailsDto {
  const _$DetailsDtoImpl(
      {required this.name,
      @JsonKey(name: 'value_type') required this.valueType,
      required this.value});

  factory _$DetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsDtoImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'value_type')
  final ValueType valueType;
  @override
  final String value;

  @override
  String toString() {
    return 'DetailsDto(name: $name, valueType: $valueType, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, valueType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsDtoImplCopyWith<_$DetailsDtoImpl> get copyWith =>
      __$$DetailsDtoImplCopyWithImpl<_$DetailsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailsDto implements DetailsDto {
  const factory _DetailsDto(
      {required final String name,
      @JsonKey(name: 'value_type') required final ValueType valueType,
      required final String value}) = _$DetailsDtoImpl;

  factory _DetailsDto.fromJson(Map<String, dynamic> json) =
      _$DetailsDtoImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'value_type')
  ValueType get valueType;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$DetailsDtoImplCopyWith<_$DetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
