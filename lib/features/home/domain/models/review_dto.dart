// ignore_for_file: invalid_annotation_target

import 'package:almaguide_flutter/features/profile/domain/models/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
class ReviewDto with _$ReviewDto {
  const factory ReviewDto({
    required int id,
    @JsonKey(name : 'created_at') final String? createdAt,
    required int rate,
    required String review,
    final String? description,
    required UserDto user,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);
}
