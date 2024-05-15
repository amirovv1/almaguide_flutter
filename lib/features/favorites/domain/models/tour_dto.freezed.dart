// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TourDto _$TourDtoFromJson(Map<String, dynamic> json) {
  return _TourDto.fromJson(json);
}

/// @nodoc
mixin _$TourDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_rate')
  String? get avgRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'way_to_travel')
  String? get wayToTravel => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourDtoCopyWith<TourDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourDtoCopyWith<$Res> {
  factory $TourDtoCopyWith(TourDto value, $Res Function(TourDto) then) =
      _$TourDtoCopyWithImpl<$Res, TourDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int price,
      int duration,
      @JsonKey(name: 'avg_rate') String? avgRate,
      @JsonKey(name: 'way_to_travel') String? wayToTravel,
      String? image});
}

/// @nodoc
class _$TourDtoCopyWithImpl<$Res, $Val extends TourDto>
    implements $TourDtoCopyWith<$Res> {
  _$TourDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? duration = null,
    Object? avgRate = freezed,
    Object? wayToTravel = freezed,
    Object? image = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as String?,
      wayToTravel: freezed == wayToTravel
          ? _value.wayToTravel
          : wayToTravel // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourDtoImplCopyWith<$Res> implements $TourDtoCopyWith<$Res> {
  factory _$$TourDtoImplCopyWith(
          _$TourDtoImpl value, $Res Function(_$TourDtoImpl) then) =
      __$$TourDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int price,
      int duration,
      @JsonKey(name: 'avg_rate') String? avgRate,
      @JsonKey(name: 'way_to_travel') String? wayToTravel,
      String? image});
}

/// @nodoc
class __$$TourDtoImplCopyWithImpl<$Res>
    extends _$TourDtoCopyWithImpl<$Res, _$TourDtoImpl>
    implements _$$TourDtoImplCopyWith<$Res> {
  __$$TourDtoImplCopyWithImpl(
      _$TourDtoImpl _value, $Res Function(_$TourDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? duration = null,
    Object? avgRate = freezed,
    Object? wayToTravel = freezed,
    Object? image = freezed,
  }) {
    return _then(_$TourDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as String?,
      wayToTravel: freezed == wayToTravel
          ? _value.wayToTravel
          : wayToTravel // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourDtoImpl implements _TourDto {
  const _$TourDtoImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.duration,
      @JsonKey(name: 'avg_rate') this.avgRate,
      @JsonKey(name: 'way_to_travel') this.wayToTravel,
      this.image});

  factory _$TourDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int price;
  @override
  final int duration;
  @override
  @JsonKey(name: 'avg_rate')
  final String? avgRate;
  @override
  @JsonKey(name: 'way_to_travel')
  final String? wayToTravel;
  @override
  final String? image;

  @override
  String toString() {
    return 'TourDto(id: $id, title: $title, description: $description, price: $price, duration: $duration, avgRate: $avgRate, wayToTravel: $wayToTravel, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.avgRate, avgRate) || other.avgRate == avgRate) &&
            (identical(other.wayToTravel, wayToTravel) ||
                other.wayToTravel == wayToTravel) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, price,
      duration, avgRate, wayToTravel, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourDtoImplCopyWith<_$TourDtoImpl> get copyWith =>
      __$$TourDtoImplCopyWithImpl<_$TourDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourDtoImplToJson(
      this,
    );
  }
}

abstract class _TourDto implements TourDto {
  const factory _TourDto(
      {required final int id,
      required final String title,
      required final String description,
      required final int price,
      required final int duration,
      @JsonKey(name: 'avg_rate') final String? avgRate,
      @JsonKey(name: 'way_to_travel') final String? wayToTravel,
      final String? image}) = _$TourDtoImpl;

  factory _TourDto.fromJson(Map<String, dynamic> json) = _$TourDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get price;
  @override
  int get duration;
  @override
  @JsonKey(name: 'avg_rate')
  String? get avgRate;
  @override
  @JsonKey(name: 'way_to_travel')
  String? get wayToTravel;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$TourDtoImplCopyWith<_$TourDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
