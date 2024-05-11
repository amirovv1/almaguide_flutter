// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryDtoImpl _$$StoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoryDtoImpl(
      id: json['id'] as int?,
      title: json['title'] as String,
      uploadedFile: json['uploaded_file'] as String?,
      seenCount: json['seen_count'] as int?,
    );

Map<String, dynamic> _$$StoryDtoImplToJson(_$StoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'uploaded_file': instance.uploadedFile,
      'seen_count': instance.seenCount,
    };
