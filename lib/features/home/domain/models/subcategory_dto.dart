import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/category_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory_dto.freezed.dart';
part 'subcategory_dto.g.dart';

@freezed
class SubcategoryDto with _$SubcategoryDto {
  const factory SubcategoryDto({
    required int id,
    final String? name,
    required CategoryDto category,
    final List<AttractionDto>? attractions
   
  }) = _SubcategoryDto;

  factory SubcategoryDto.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryDtoFromJson(json);
}
