import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/profile/domain/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
    }, (r) {
      emit(const _AuthSuccess());
    });
    emit(const _InitialPage());
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
