import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_dto.freezed.dart';
part 'story_dto.g.dart';

@freezed
class StoryDto with _$StoryDto {
  const factory StoryDto({
    final int? id,
    required String title,
    @JsonKey(name: 'uploaded_file') final String? uploadedFile,
    @JsonKey(name: 'seen_count') final int? seenCount,
  }) = _StoryDto;

  factory StoryDto.fromJson(Map<String, dynamic> json) =>
      _$StoryDtoFromJson(json);
}
