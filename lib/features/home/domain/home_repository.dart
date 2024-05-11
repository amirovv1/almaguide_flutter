import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/features/home/data/home_remote_ds.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/route_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/story_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/subcategory_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class HomeRepository {
  Future<Either<Failure, AttractionDto>> getMainAttraction(
      {required String lng, required String lat});
  Future<Either<Failure, List<SubcategoryDto>>> getSubcategories(
      {required String lng, required String lat});
  Future<Either<Failure, AttractionDto>> getAttractionByID(
      {required String lng, required String lat, required int id});
  Future<Either<Failure, List<ReviewDto>>> getAttractReviews({required int id});
  Future<Either<Failure, String>> makeAttractRoute(
      {required String lng, required String lat, required int id});
  Future<Either<Failure, void>> addAttractionToFavorites(
      {required int attraction});
  Future<Either<Failure, List<AttractionDto>>> searchAttraction(
      {required String keyword, required int lat, required int lng});
  Future<Either<Failure, void>> deleteFromFavorites(int id);

  Future<Either<Failure, String>> getAttractionRoutUrl(
      {required int id, required String lat, required String lng});

  Future<Either<Failure, List<AttractionDto>>> getFavorites(
      {required String lat, required String lng});
  Future<Either<Failure, List<StoryDto>>> getStories();
    Future<Either<Failure, void>> makeRoute();
    Future<Either<Failure, List<RouteDto>>> getRoutes();

}

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDS remoteDS;

  HomeRepositoryImpl({
    required this.remoteDS,
  });

  @override
  Future<Either<Failure, AttractionDto>> getMainAttraction(
      {required String lng, required String lat}) async {
    try {
      final AttractionDto result =
          await remoteDS.getMainAttraction(longitude: lng, latitude: lat);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<SubcategoryDto>>> getSubcategories(
      {required String lng, required String lat}) async {
    try {
      final result =
          await remoteDS.getSubcategories(longitude: lng, latitude: lat);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, AttractionDto>> getAttractionByID(
      {required String lng, required String lat, required int id}) async {
    try {
      final AttractionDto result = await remoteDS.getAttractionById(
          longitude: lng, latitude: lat, id: id);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<ReviewDto>>> getAttractReviews(
      {required int id}) async {
    try {
      final result = await remoteDS.getAttractReviews(id: id);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, String>> makeAttractRoute(
      {required String lng, required String lat, required int id}) async {
    try {
      final result = await remoteDS.makeAttractRoute(
          longitude: lng, latitude: lat, attractId: id);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> addAttractionToFavorites(
      {required int attraction}) async {
    try {
      final result =
          await remoteDS.addAttractionToFavorites(attraction: attraction);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<AttractionDto>>> searchAttraction(
      {required String keyword, required int lat, required int lng}) async {
    try {
      final result =
          await remoteDS.searchAttraction(keyword: keyword, lat: lat, lng: lng);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> deleteFromFavorites(int id) async {
    try {
      await remoteDS.deleteFromFavorites(id);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, String>> getAttractionRoutUrl(
      {required int id, required String lat, required String lng}) async {
    try {
      final result = await remoteDS.getAttractionRoutUrl(id, lat, lng);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<AttractionDto>>> getFavorites(
      {required String lat, required String lng}) async {
    try {
      final result = await remoteDS.getFavorites(lat: lat, lng: lng);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<StoryDto>>> getStories() async {
    try {
      final result = await remoteDS.getStories();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }
  
  @override
  Future<Either<Failure, void>> makeRoute()async {
    try {
      await remoteDS.makeRoute();
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }
  
  @override
  Future<Either<Failure, List<RouteDto>>> getRoutes() async{
    try {
      final result = await remoteDS.getRoutes();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }
}
