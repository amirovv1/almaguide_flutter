// ignore_for_file: use_build_context_synchronously

import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/features/profile/domain/auth_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_cubit.freezed.dart';

@singleton
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository repo;
  AuthCubit(this.repo) : super(const AuthState.initialState());
  Future<void> signIn({required String email, required String password}) async {
    emit(const _AuthLoading());
    final result = await repo.createJTW(email: email, password: password);
    result.fold((l) {
      emit(_AuthError(message: mapFailureToMessage(l)));
      emit(const _InitialPage());
    }, (r) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('access', r.access);
      emit(const _AuthSuccess());
      emit(const _InitialPage());
    });
  }

  Future<void> forgotPassword(String email, BuildContext context) async {
    emit(const _AuthLoading());
    final result = await repo.forgotPassword(email);
    result.fold((l) {
      emit(_AuthError(message: l.toString()));
      emit(const _InitialPage());
    }, (r) {
      emit(const _InitialPage());
      context.router.popAndPush(OtpForgotPasswordRoute(email: email));
    });
  }

  Future<void> requestNewPassword(String password, BuildContext context) async {
    emit(const _AuthLoading());
    final result = await repo.requestNewPassword(password);
    result.fold((l) {
      emit(_AuthError(message: l.toString()));
      emit(const _InitialPage());
    }, (r) {

      context.router.popAndPush(const PasswordSuccessChangeRoute());
            emit(const AuthState.initialState());

    });
  }

  Future<void> verifyOtp(String mail, String otp, BuildContext context) async {
    emit(const _AuthLoading());
    final result = await repo.verifyOtp(mail, int.parse(otp));
    result.fold((l) {
      emit(_AuthError(message: l.toString()));
      emit(const _InitialPage());
    }, (r) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('access', r.access);
      context.router.popAndPush(const EnterNewPasswordRoute());
      emit(const AuthState.initialState());
    });
  }
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initialState({@Default('') String langCode}) =
      _InitialPage;
  const factory AuthState.loadingState() = _AuthLoading;
  const factory AuthState.errorState({@Default('') String message}) =
      _AuthError;
  const factory AuthState.sucess() = _AuthSuccess;
}
