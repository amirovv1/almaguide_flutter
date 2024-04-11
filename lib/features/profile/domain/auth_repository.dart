import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/features/profile/data/auth_remote_ds.dart';
import 'package:almaguide_flutter/features/profile/domain/models/token_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<Either<Failure, TokenDto>> createJTW(
      {required String email, required String password});
  Future<Either<Failure, TokenDto>> signUp(
      {required String email,
      required String password,
      required String fullName,
      String? phone,
      XFile? image});
}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDs remoteDS;

  AuthRepositoryImpl({
    required this.remoteDS,
  });

  @override
  Future<Either<Failure, TokenDto>> createJTW(
      {required String email, required String password}) async {
    try {
      final TokenDto result =
          await remoteDS.createJWT(email: email, password: password);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, TokenDto>> signUp(
      {required String email,
      required String password,
      required String fullName,
      String? phone,
      XFile? image}) async {
    try {
      final TokenDto result = await remoteDS.signUp(
          email: email,
          password: password,
          fullName: fullName,
          phone: phone,
          image: image);

      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    }
  }
}
