import 'package:almaguide_flutter/features/home/domain/models/details_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attraction_dto.freezed.dart';
part 'attraction_dto.g.dart';

@freezed
class AttractionDto with _$AttractionDto {
  const factory AttractionDto({
    required int id,
    required String name,
    final String? image,
    final String? distance,
        final String? description,

    @JsonValue('category_icon') final String? categoryIcon,
            final List<DetailsDto>? details,

  }) = _AttractionDto;

  factory AttractionDto.fromJson(Map<String, dynamic> json) =>
      _$AttractionDtoFromJson(json);
}
