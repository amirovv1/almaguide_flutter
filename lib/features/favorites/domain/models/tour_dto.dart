// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_dto.freezed.dart';
part 'tour_dto.g.dart';

@freezed
class TourDto with _$TourDto {
  const factory TourDto({
    required int id,
    required String title,
        required String description,
        required int price,
        required int duration,
    @JsonKey(name:'avg_rate') final String? avgRate,
    @JsonKey(name:'way_to_travel') final String? wayToTravel ,

    final String? image,

  }) = _TourDto;

  factory TourDto.fromJson(Map<String, dynamic> json) =>
      _$TourDtoFromJson(json);
}
