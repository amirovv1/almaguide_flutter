// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attraction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttractionDtoImpl _$$AttractionDtoImplFromJson(Map<String, dynamic> json) =>
    _$AttractionDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String?,
      distance: json['distance'] as String?,
      description: json['description'] as String?,
      isFavourite: json['is_favourite'] as bool?,
      categoryIcon: json['category_icon'] as String?,
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => DetailsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      similarAttractions: (json['similar_attractions'] as List<dynamic>?)
          ?.map((e) => AttractionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      avgRate: json['avg_rate'] as String?,
    );

Map<String, dynamic> _$$AttractionDtoImplToJson(_$AttractionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'distance': instance.distance,
      'description': instance.description,
      'is_favourite': instance.isFavourite,
      'category_icon': instance.categoryIcon,
      'details': instance.details,
      'similar_attractions': instance.similarAttractions,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'avg_rate': instance.avgRate,
    };
