// ignore_for_file: invalid_annotation_target

import 'package:almaguide_flutter/features/home/domain/models/details_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attraction_dto.freezed.dart';
part 'attraction_dto.g.dart';

@freezed
class AttractionDto with _$AttractionDto {
  const AttractionDto._(); // Private constructor for Freezed to allow adding methods

  const factory AttractionDto({
    required int id,
    required String name,
    String? image,
    String? distance,
    String? description,
    @JsonKey(name: 'is_favourite') bool? isFavourite,
    @JsonKey(name: 'category_icon') String? categoryIcon,
    List<DetailsDto>? details,
    @JsonKey(name: 'similar_attractions') List<AttractionDto>? similarAttractions,
    String? longitude,
    String? latitude,
    @JsonKey(name: 'avg_rate') String? avgRate,
  }) = _AttractionDto;

  double? get avgRateAsDouble => avgRate != null ? double.tryParse(avgRate!) : null;
  double? get distanceAsDouble => distance != null ? double.tryParse(distance!) : null;

  factory AttractionDto.fromJson(Map<String, dynamic> json) => _$AttractionDtoFromJson(json);
}
