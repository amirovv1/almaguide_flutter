import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/features/categories/data/categories_remote_ds.dart';
import 'package:almaguide_flutter/features/favorites/domain/models/tour_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/category_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, List<CategoryDto>>> getPopularCategories();
  Future<Either<Failure, List<CategoryDto>>> getOtherCategories();
  Future<Either<Failure, List<TourDto>>> getTours();
  Future<Either<Failure, TourDto>> getTourById({required int id});
  Future<Either<Failure, List<ReviewDto>>> getReviewTour({required int id});
  Future<Either<Failure, void>> sendReview(
      {required int tourId, required String review, required int rate});
        Future<Either<Failure, void>> payTour({required int id});
  Future<Either<Failure, List<TourDto>>> getMyTours();

}

@LazySingleton(as: CategoriesRepository)
class CategoriesRepositoryImpl extends CategoriesRepository {
  final CategoriesRemoteDs remoteDS;

  CategoriesRepositoryImpl({
    required this.remoteDS,
  });

  @override
  Future<Either<Failure, List<CategoryDto>>> getPopularCategories() async {
    try {
      final result = await remoteDS.getPopularCategories();

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<CategoryDto>>> getOtherCategories() async {
    try {
      final result = await remoteDS.getOtherCategories();

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<TourDto>>> getTours() async {
    try {
      final result = await remoteDS.getTours();

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, TourDto>> getTourById({required int id}) async {
    try {
      final result = await remoteDS.getToursById(id: id);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<ReviewDto>>> getReviewTour(
      {required int id}) async {
    try {
      final result = await remoteDS.getReviewByTour(id: id);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> sendReview(
      {required int tourId, required String review, required int rate}) async {
    try {
      final result =
          await remoteDS.sendReview(tourId: tourId, review: review, rate: rate);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }
  
  @override
  Future<Either<Failure, void>> payTour({required int id}) async {
   try {
      final result = await remoteDS.payTour(id: id);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }
  
  @override
  Future<Either<Failure, List<TourDto>>> getMyTours() async{
    try {
      final result = await remoteDS.getMyTours();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }
}
