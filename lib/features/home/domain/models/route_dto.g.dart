// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteDtoImpl _$$RouteDtoImplFromJson(Map<String, dynamic> json) =>
    _$RouteDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$RouteDtoImplToJson(_$RouteDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
    };
