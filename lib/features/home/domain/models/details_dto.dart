// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_dto.freezed.dart';
part 'details_dto.g.dart';

@freezed
class DetailsDto with _$DetailsDto {
  const factory DetailsDto({
    required String name,
    @JsonKey(name : 'value_type') required ValueType valueType,
    required String value,
    
  }) = _DetailsDto;

  factory DetailsDto.fromJson(Map<String, dynamic> json) =>
      _$DetailsDtoFromJson(json);
}


enum ValueType{
  @JsonValue('text')
  text,
  @JsonValue('link')
  link,
  @JsonValue('phone')
  phone,

}
