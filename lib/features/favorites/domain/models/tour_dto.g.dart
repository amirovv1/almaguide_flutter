// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourDtoImpl _$$TourDtoImplFromJson(Map<String, dynamic> json) =>
    _$TourDtoImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      duration: json['duration'] as int,
      avgRate: json['avg_rate'] as String?,
      wayToTravel: json['way_to_travel'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$TourDtoImplToJson(_$TourDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'duration': instance.duration,
      'avg_rate': instance.avgRate,
      'way_to_travel': instance.wayToTravel,
      'image': instance.image,
    };
