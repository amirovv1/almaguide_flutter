import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/profile/domain/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_cubit.freezed.dart';

@singleton
class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepository repo;
  SignUpCubit(this.repo) : super(const SignUpState.initialState());
  Future<void> signUp(
      {required String email,
      required String password,
      required String name,
      String? phone,
      XFile? image}) async {
    emit(const _AuthLoading());
    final result = await repo.signUp(
        email: email, password: password, fullName: name, phone: phone, image: image);
    result.fold((l) {
      emit(_AuthError(message: mapFailureToMessage(l)));
    }, (r) {
      emit(const _AuthSuccess());
    });
    emit(const _InitialPage());
  }
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initialState({@Default('') String langCode}) =
      _InitialPage;
  const factory SignUpState.loadingState() = _AuthLoading;
  const factory SignUpState.errorState({@Default('') String message}) =
      _AuthError;
  const factory SignUpState.sucess() = _AuthSuccess;
}
