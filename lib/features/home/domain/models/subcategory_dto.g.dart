// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubcategoryDtoImpl _$$SubcategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$SubcategoryDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      attractions: (json['attractions'] as List<dynamic>)
          .map((e) => AttractionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubcategoryDtoImplToJson(
        _$SubcategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'attractions': instance.attractions,
    };
