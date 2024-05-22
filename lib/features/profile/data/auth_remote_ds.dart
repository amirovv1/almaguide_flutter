// ignore_for_file: avoid_print

import 'package:almaguide_flutter/core/api/api_helper.dart';
import 'package:almaguide_flutter/core/api/dio_wrapper.dart';
import 'package:almaguide_flutter/core/errors/server_errors.dart';
import 'package:almaguide_flutter/features/profile/domain/models/token_dto.dart';
import 'package:almaguide_flutter/features/profile/domain/models/user_dto.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDs {
  Future<TokenDto> createJWT({required String email, required String password});
  Future<TokenDto> signUp(
      {required String email,
      required String password,
      required String fullName,
      String? phone,
      XFile? image});
  Future<UserDto> getUser();
  Future<void> forgotPassword(String email);
  Future<void> requestNewPassword(String password);
    Future<TokenDto> verifyOTP(String mail,int otp);

}

@LazySingleton(as: AuthRemoteDs)
class AuthRemoteDsImpl extends AuthRemoteDs {
  late final Dio dio;
  final DioWrapper dioWrapper;
  AuthRemoteDsImpl(this.dioWrapper) {
    dioWrapper.path('');
    dio = dioWrapper.dio;
  }

  @override
  Future<TokenDto> createJWT(
      {required String email, required String password}) async {
    try {
      final response = await dio.post(
        EndPoints.createJWT,
        data: {
          'email': email,
          'password': password,
        },
      );
      return TokenDto.fromJson(
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
  Future<TokenDto> signUp(
      {required String email,
      required String password,
      required String fullName,
      String? phone,
      XFile? image}) async {
    try {
      FormData formData = FormData.fromMap({
        'full_name': fullName,
        if (phone != null) 'phone_number': phone,
        'email': email,
        'password': password,
        if (image != null) 'photo': await MultipartFile.fromFile(image.path),
      });
      final response = await dio.post(
        EndPoints.signUp,
        data: formData,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
      );
      return TokenDto.fromJson(
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
  Future<UserDto> getUser() async {
    try {
      final response = await dio.get(
        EndPoints.user,
      );
      return UserDto.fromJson(
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
  Future<void> forgotPassword(String email) async {
    try {
      await dio.post(
        EndPoints.forgotPassword,
        data: {
          "email": email,
        },
      );
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }

  @override
  Future<void> requestNewPassword(String password) async {
    try {
      await dio.post(
        EndPoints.requestNewPassword,
        data: {
          "password": password,
        },
      );
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }
  
  @override
  Future<TokenDto> verifyOTP(String mail, int otp)async {
    try {
      final response = await dio.post(
        EndPoints.verifyOtp,
        data: {
          "email": mail,
          "otp": otp,
        },
      );
      return TokenDto.fromJson(
        (response.data as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      final error = e.response?.data as Map<String, dynamic>;
      throw ServerException(
        message: error['detail'].toString(),
      );
    }
  }
}
