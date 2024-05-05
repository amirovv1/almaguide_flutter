// ignore_for_file: avoid_print

import 'package:almaguide_flutter/core/api/api_helper.dart';
import 'package:almaguide_flutter/core/api/dio_wrapper.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/subcategory_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class HomeRemoteDS {
  Future<AttractionDto> getAttractionById(
      {required String longitude, required String latitude, required int id});

  Future<AttractionDto> getMainAttraction(
      {required String longitude, required String latitude});

  Future<List<SubcategoryDto>> getSubcategories(
      {required String longitude, required String latitude});

  Future<List<ReviewDto>> getAttractReviews({required int id});

  Future<void> addAttractionToFavorites({required int attraction});

  Future<String> makeAttractRoute({required String longitude,
    required String latitude,
    required int attractId});

  Future<List<AttractionDto>> searchAttraction(
      {required String keyword, required int lat, required int lng});

}

@LazySingleton(as: HomeRemoteDS)
class HomeRemoteDsImpl extends HomeRemoteDS {
  late final Dio dio;
  final DioWrapper dioWrapper;
  HomeRemoteDsImpl(this.dioWrapper) {
    dioWrapper.path('');
    dio = dioWrapper.dio;
  }

  @override
  Future<AttractionDto> getMainAttraction(
      {required String longitude, required String latitude}) async {
    try {
      final response = await dio.get(
        EndPoints.mainAttraction,
        queryParameters: {
          'lng': longitude,
          'lat': latitude,
        },
      );
      return AttractionDto.fromJson(
        (response.data as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<SubcategoryDto>> getSubcategories(
      {required String longitude, required String latitude}) async {
    try {
      final response = await dio.get(
        EndPoints.mainSubcategories,
        queryParameters: {
          'lng': longitude,
          'lat': latitude,
        },
      );
      final Map<String, dynamic> responseBody =
          response.data as Map<String, dynamic>;
      final List<dynamic> results = responseBody['results'] as List<dynamic>;

      return results.map((json) => SubcategoryDto.fromJson(json)).toList();
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<AttractionDto> getAttractionById(
      {required String longitude,
      required String latitude,
      required int id}) async {
    try {
      final response = await dio.get(
        '${EndPoints.attractions}/$id/',
        queryParameters: {
          'lng': longitude,
          'lat': latitude,
          'id': id,
        },
      );
      return AttractionDto.fromJson(
        (response.data as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<ReviewDto>> getAttractReviews({required int id}) async {
    try {
      final response = await dio.get(
        EndPoints.reviewAttraction,
        queryParameters: {
          'id': id,
        },
      );
      final Map<String, dynamic> responseBody =
          response.data as Map<String, dynamic>;
      final List<dynamic> results = responseBody['results'] as List<dynamic>;

      return results.map((json) => ReviewDto.fromJson(json)).toList();
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<String> makeAttractRoute(
      {required String longitude,
      required String latitude,
      required int attractId}) async {
    try {
      final response = await dio.get(
        '${EndPoints.routeAttraction}/$attractId/yandex',
        queryParameters: {
          'lng': longitude,
          'lat': latitude,
          'id': attractId,
        },
      );
      final Map<String, dynamic> responseBody =
          response.data as Map<String, dynamic>;
      print('-${responseBody['url']}');
      return responseBody['url'];
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<void> addAttractionToFavorites({required int attraction}) async{
    try {
      final response = await dio.post(
        '${EndPoints.attractions}/favourite/choose/',
        data: {
          "attraction": attraction
        },
      );
      // final Map<String, dynamic> responseBody =
      // response.data as Map<String, dynamic>;
      // print('-${responseBody['url']}');
      // return responseBody['url'];
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<AttractionDto>> searchAttraction({required String keyword, required int lat, required int lng}) async {
    try{
      final response = await dio.get(
        '${EndPoints.attractions}?lat=$lat&lng=$lng&search=$keyword',
      );
      final Map<String, dynamic> responseBody =
      response.data as Map<String, dynamic>;
      print('resp ${response.data}');
      final res = (responseBody['results'] as List).map((e) => AttractionDto.fromJson(e)).toList();
      return res;
    }on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }
}
