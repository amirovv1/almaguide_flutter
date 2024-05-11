// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_dto.freezed.dart';
part 'route_dto.g.dart';

@freezed
class RouteDto with _$RouteDto {
  const factory RouteDto({
    required int id,
    required String name,
    @JsonKey(name : 'created_at') final String? createdAt,
    

    

  }) = _RouteDto;

  factory RouteDto.fromJson(Map<String, dynamic> json) =>
      _$RouteDtoFromJson(json);
}
