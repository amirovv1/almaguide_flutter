// ignore_for_file: avoid_print

import 'package:almaguide_flutter/core/api/api_helper.dart';
import 'package:almaguide_flutter/core/api/dio_wrapper.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/features/home/domain/models/category_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class CategoriesRemoteDs {
  Future<List<CategoryDto>> getPopularCategories();
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
}
