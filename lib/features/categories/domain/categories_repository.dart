import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/features/categories/data/categories_remote_ds.dart';
import 'package:almaguide_flutter/features/home/domain/models/category_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, List<CategoryDto>>> getPopularCategories();
     
 
}

@LazySingleton(as: CategoriesRepository)
class CategoriesRepositoryImpl extends CategoriesRepository {
  final CategoriesRemoteDs remoteDS;

  CategoriesRepositoryImpl({
    required this.remoteDS,
  });
  
  @override
  Future<Either<Failure, List<CategoryDto>>> getPopularCategories() async{
    try {
      final  result =
          await remoteDS.getPopularCategories();

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  
  
  
  
  

 
}
