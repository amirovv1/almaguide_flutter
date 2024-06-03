// ignore_for_file: avoid_print

import 'package:almaguide_flutter/core/api/api_helper.dart';
import 'package:almaguide_flutter/core/api/dio_wrapper.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/core/services/location_service.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/route_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/story_dto.dart';
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

  Future<List<SubcategoryDto>> getSubcategoriesByCategory(
      {required int categoryId});

  Future<List<ReviewDto>> getAttractReviews({required int id});

  Future<void> addAttractionToFavorites({required int attraction});

  Future<String> makeAttractRoute(
      {required String longitude,
      required String latitude,
      required int attractId});

  Future<List<AttractionDto>> searchAttraction(
      {required String keyword, required int lat, required int lng});

  Future<void> deleteFromFavorites(int id);

  Future<String> getAttractionRoutUrl(int id, String lat, String lng);

  Future<List<AttractionDto>> getFavorites(
      {required String lat, required String lng});

  Future<List<StoryDto>> getStories();
  Future<void> makeRoute();
  Future<List<RouteDto>> getRoutes();

  Future<List<AttractionDto>> getAttractionByCategory(
      {int? categoryId, int? subcategory, int? avgRate, String? ordering});
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
  Future<void> addAttractionToFavorites({required int attraction}) async {
    try {
      await dio.post(
        '${EndPoints.attractions}/favourite/choose/',
        data: {"attraction": attraction},
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
  Future<List<AttractionDto>> searchAttraction(
      {required String keyword, required int lat, required int lng}) async {
    try {
      final response = await dio.get(
        '${EndPoints.attractions}?lat=$lat&lng=$lng&search=$keyword',
      );
      final Map<String, dynamic> responseBody =
          response.data as Map<String, dynamic>;
      final res = (responseBody['results'] as List)
          .map((e) => AttractionDto.fromJson(e))
          .toList();
      return res;
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<void> deleteFromFavorites(int id) async {
    try {
      await dio.delete(
        EndPoints.deleteFromFavorites(id),
      );
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<String> getAttractionRoutUrl(int id, String lat, String lng) async {
    try {
      final response = await dio
          .get("${EndPoints.getAttractionRoutUrl(id)}?lat=$lat&lng=$lng");
      final Map<String, dynamic> responseBody =
          response.data as Map<String, dynamic>;
      return responseBody["url"];
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<AttractionDto>> getFavorites(
      {required String lat, required String lng}) async {
    try {
      final response = await dio.get(
        '${EndPoints.getFavorites}?lat=$lat&lng=$lng',
      );
      final Map<String, dynamic> responseBody =
          response.data as Map<String, dynamic>;
      final res = (responseBody['results'] as List)
          .map((e) => AttractionDto.fromJson(e))
          .toList();
      return res;
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<StoryDto>> getStories() async {
    try {
      final response = await dio.get(
        EndPoints.getStories,
      );
      print('история-${response.data.toString()}');
      if (response.statusCode == 200) {
        final List<dynamic> responseData = response.data as List<dynamic>;
        final List<StoryDto> stories = responseData
            .map((e) => StoryDto.fromJson(e as Map<String, dynamic>))
            .toList();
        return stories;
      } else {
        throw ServerException(message: 'Failed to load stories');
      }
    } on DioException catch (e) {
      throw ServerException(message: 'Failed to load stories: ${e.message}');
    }
  }

  @override
  Future<void> makeRoute() async {
    try {
      final location = await LocationService().getCurrentLocation();

      await dio.post(
        EndPoints.makeRoute,
        data: {"lat": location.latitude, "lng": location.longitude},
      );
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<RouteDto>> getRoutes() async {
    try {
      final response = await dio.get(
        EndPoints.routes,
      );
      final Map<String, dynamic> responseBody =
          response.data as Map<String, dynamic>;
      final res = (responseBody['results'] as List)
          .map((e) => RouteDto.fromJson(e))
          .toList();
      return res;
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<AttractionDto>> getAttractionByCategory(
      {int? categoryId,
      int? subcategory,
      int? avgRate,
      String? ordering}) async {
    try {
      final location = await LocationService().getCurrentLocation();
      final response = await dio.get(EndPoints.attractions, data: {
        if (categoryId != null) "category": categoryId,
        if (avgRate != null) "avg_rate": categoryId,
        if (subcategory != null) "subcategory": categoryId,
        if (ordering != null) "ordering": categoryId,
        "lat": location.latitude,
        "lng": location.longitude,
      }, queryParameters: {
        if (categoryId != null) "category": categoryId,
        if (avgRate != null) "avg_rate": categoryId,
        if (subcategory != null) "subcategory": categoryId,
        if (ordering != null) "ordering": categoryId,
        "lat": location.latitude,
        "lng": location.longitude,
      });
      final Map<String, dynamic> responseBody =
          response.data as Map<String, dynamic>;
      final res = (responseBody['results'] as List)
          .map((e) => AttractionDto.fromJson(e))
          .toList();
      return res;
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<SubcategoryDto>> getSubcategoriesByCategory(
      {required int categoryId}) async {
    try {
      final location = await LocationService().getCurrentLocation();
      final response = await dio.get(
        EndPoints.subsByCategory,
        queryParameters: {
          'category': categoryId,
          'lng': location.longitude,
          'lat': location.latitude,
        },
      );
      
      final List<dynamic> results = response.data as List<dynamic>;

      return results.map((json) => SubcategoryDto.fromJson(json)).toList();
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }
}
