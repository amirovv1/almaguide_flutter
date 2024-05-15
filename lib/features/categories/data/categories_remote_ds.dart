// ignore_for_file: avoid_print

import 'package:almaguide_flutter/core/api/api_helper.dart';
import 'package:almaguide_flutter/core/api/dio_wrapper.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/features/favorites/domain/models/tour_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/category_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract interface class CategoriesRemoteDs {
  Future<List<CategoryDto>> getPopularCategories();
  Future<List<CategoryDto>> getOtherCategories();
  Future<List<TourDto>> getTours();
  Future<TourDto> getToursById({required int id});
  Future<List<ReviewDto>> getReviewByTour({required int id});
  Future<void> sendReview(
      {required int tourId, required String review, required int rate});
  Future<void> payTour({required int id});
    Future<List<TourDto>> getMyTours();

  
}

@LazySingleton(as: CategoriesRemoteDs)
class CategoriesRemoteDsImpl extends CategoriesRemoteDs {
  late final Dio dio;
  final DioWrapper dioWrapper;
  CategoriesRemoteDsImpl(this.dioWrapper) {
    dioWrapper.path('');
    dio = dioWrapper.dio;
  }

  @override
  Future<List<CategoryDto>> getPopularCategories() async {
    try {
      final response = await dio.get(
        EndPoints.popularCategories,
      );

      final List<dynamic> results = response.data as List<dynamic>;

      return results.map((json) => CategoryDto.fromJson(json)).toList();
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<CategoryDto>> getOtherCategories() async {
    try {
      final response = await dio.get(
        EndPoints.categories,
      );

      final List<dynamic> results = response.data['results'] as List<dynamic>;

      return results.map((json) => CategoryDto.fromJson(json)).toList();
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<TourDto>> getTours() async {
    try {
      final response = await dio.get(
        EndPoints.tours,
      );

      final List<dynamic> results = response.data['results'] as List<dynamic>;

      return results.map((json) => TourDto.fromJson(json)).toList();
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<TourDto> getToursById({required int id}) async {
    try {
      final response = await dio.get(
        EndPoints.tourById(id),
      );

      print('Тур - ${TourDto.fromJson(response.data as Map<String, dynamic>)}');
      return TourDto.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<List<ReviewDto>> getReviewByTour({required int id}) async {
    try {
      final response = await dio.get(EndPoints.reviewTour,
          queryParameters: {"tour": id}, data: {"tour": id});

      final List<dynamic> results = response.data['results'] as List<dynamic>;

      return results.map((json) => ReviewDto.fromJson(json)).toList();
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<void> sendReview(
      {required int tourId, required String review, required int rate}) async {
    try {
      dio.post(EndPoints.reviewTour,
          data: {"tour": tourId, "review": review, "rate": rate});
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }
  
  @override
  Future<void> payTour({required int id}) async {
    try {
      dio.post(EndPoints.pay,
          data: {"tour": id,});
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }
  
  @override
  Future<List<TourDto>> getMyTours() async{
    try {
      final response = await dio.get(
        EndPoints.myTours,
      );

      final List<dynamic> results = response.data['results'] as List<dynamic>;

      return results.map((json) => TourDto.fromJson(json)).toList();
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;

      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }
}
