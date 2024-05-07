// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryDtoImpl _$$StoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoryDtoImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      uploadedFile: json['uploadedFile'] as String?,
      seenCount: json['seenCount'] as int,
    );

Map<String, dynamic> _$$StoryDtoImplToJson(_$StoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'uploadedFile': instance.uploadedFile,
      'seenCount': instance.seenCount,
    };
