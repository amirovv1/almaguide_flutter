// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RouteDto _$RouteDtoFromJson(Map<String, dynamic> json) {
  return _RouteDto.fromJson(json);
}

/// @nodoc
mixin _$RouteDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteDtoCopyWith<RouteDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteDtoCopyWith<$Res> {
  factory $RouteDtoCopyWith(RouteDto value, $Res Function(RouteDto) then) =
      _$RouteDtoCopyWithImpl<$Res, RouteDto>;
  @useResult
  $Res call(
      {int id, String name, @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$RouteDtoCopyWithImpl<$Res, $Val extends RouteDto>
    implements $RouteDtoCopyWith<$Res> {
  _$RouteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteDtoImplCopyWith<$Res>
    implements $RouteDtoCopyWith<$Res> {
  factory _$$RouteDtoImplCopyWith(
          _$RouteDtoImpl value, $Res Function(_$RouteDtoImpl) then) =
      __$$RouteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$RouteDtoImplCopyWithImpl<$Res>
    extends _$RouteDtoCopyWithImpl<$Res, _$RouteDtoImpl>
    implements _$$RouteDtoImplCopyWith<$Res> {
  __$$RouteDtoImplCopyWithImpl(
      _$RouteDtoImpl _value, $Res Function(_$RouteDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$RouteDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteDtoImpl implements _RouteDto {
  const _$RouteDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$RouteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'RouteDto(id: $id, name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteDtoImplCopyWith<_$RouteDtoImpl> get copyWith =>
      __$$RouteDtoImplCopyWithImpl<_$RouteDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteDtoImplToJson(
      this,
    );
  }
}

abstract class _RouteDto implements RouteDto {
  const factory _RouteDto(
      {required final int id,
      required final String name,
      @JsonKey(name: 'created_at') final String? createdAt}) = _$RouteDtoImpl;

  factory _RouteDto.fromJson(Map<String, dynamic> json) =
      _$RouteDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$RouteDtoImplCopyWith<_$RouteDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
