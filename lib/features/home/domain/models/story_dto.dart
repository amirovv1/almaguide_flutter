import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_dto.freezed.dart';
part 'story_dto.g.dart';

@freezed
class StoryDto with _$StoryDto {
  const factory StoryDto({
    required int id,
    required String title,
    final String? uploadedFile,
    @JsonValue('seen_count') required int seenCount,
  }) = _StoryDto;

  factory StoryDto.fromJson(Map<String, dynamic> json) =>
      _$StoryDtoFromJson(json);
}
