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
      categoryIcon: json['categoryIcon'] as String?,
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => DetailsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AttractionDtoImplToJson(_$AttractionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'distance': instance.distance,
      'description': instance.description,
      'categoryIcon': instance.categoryIcon,
      'details': instance.details,
    };
