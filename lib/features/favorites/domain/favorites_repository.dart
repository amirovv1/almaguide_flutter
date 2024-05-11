import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/features/favorites/data/favorites_remote_ds.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class FavoritesRepository {
  Future<Either<Failure, List<AttractionDto>>> getAttractByRouteId({required int id});
     
 
}

@LazySingleton(as: FavoritesRepository)
class FavoritesRepositoryImpl extends FavoritesRepository {
  final FavoritesRemoteDs remoteDS;

  FavoritesRepositoryImpl({
    required this.remoteDS,
  });
  
  @override
  Future<Either<Failure, List<AttractionDto>>> getAttractByRouteId({required int id}) async{
    try {
      final  result =
          await remoteDS.getAttractsByRouteId(id: id);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  
  
  
  
  

 
}
