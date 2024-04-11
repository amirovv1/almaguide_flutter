// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenDtoImpl _$$TokenDtoImplFromJson(Map<String, dynamic> json) =>
    _$TokenDtoImpl(
      refresh: json['refresh'] as String,
      access: json['access'] as String,
    );

Map<String, dynamic> _$$TokenDtoImplToJson(_$TokenDtoImpl instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };
