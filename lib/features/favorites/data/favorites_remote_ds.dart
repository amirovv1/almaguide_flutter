// ignore_for_file: avoid_print

import 'package:almaguide_flutter/core/api/api_helper.dart';
import 'package:almaguide_flutter/core/api/dio_wrapper.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/core/services/location_service.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class FavoritesRemoteDs {
  Future<List<AttractionDto>> getAttractsByRouteId({required int id});
}

@LazySingleton(as: FavoritesRemoteDs)
class FavoritesRemoteDsImpl extends FavoritesRemoteDs {
  late final Dio dio;
  final DioWrapper dioWrapper;
  FavoritesRemoteDsImpl(this.dioWrapper) {
    dioWrapper.path('');
    dio = dioWrapper.dio;
  }

  @override
  Future<List<AttractionDto>> getAttractsByRouteId({required int id}) async {
    try {
      final location = await LocationService().getCurrentLocation();
      final response =
          await dio.get(EndPoints.getAttractionByRouteId(id), data: {
        "lat": location.latitude,
        "lng": location.longitude,
        "id": "$id",
      },
      queryParameters: {
        "lat": location.latitude,
        "lng": location.longitude,
        "id": "$id",
      },);

      print('oshibka-${response.data.toString()}');

      final List<dynamic> results = response.data as List<dynamic>;

      return results.map((json) => AttractionDto.fromJson(json)).toList();
    } on DioException catch (e) {
      print('ochibka-${e.message}');
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }
}
