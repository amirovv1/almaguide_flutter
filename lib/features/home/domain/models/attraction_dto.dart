// ignore_for_file: invalid_annotation_target

import 'package:almaguide_flutter/features/home/domain/models/details_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attraction_dto.freezed.dart';
part 'attraction_dto.g.dart';

@freezed
class AttractionDto with _$AttractionDto {
  const factory AttractionDto(
      {required int id,
      required String name,
      final String? image,
      final String? distance,
      final String? description,
      @JsonKey(name: 'is_favourite') final bool? isFavourite,
      @JsonValue('category_icon') final String? categoryIcon,
      final List<DetailsDto>? details,
      @JsonKey(name: 'similar_attractions')
      final List<AttractionDto>? similarAttracts,
      final String? longitude,
      final String? latitude}) = _AttractionDto;

  factory AttractionDto.fromJson(Map<String, dynamic> json) =>
      _$AttractionDtoFromJson(json);
}
