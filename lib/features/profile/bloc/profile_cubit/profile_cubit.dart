import 'package:almaguide_flutter/features/profile/domain/auth_repository.dart';
import 'package:almaguide_flutter/features/profile/domain/models/user_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_cubit.freezed.dart';

@singleton
class ProfileCubit extends Cubit<ProfileState> {
  final AuthRepository repo;

  ProfileCubit(this.repo) : super(const ProfileState.initialState());
  late UserDto? _userDto;
  Future<void> initProfile() async {
    emit(const _ProfileLoading());
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('access');

    if (token == null) {
      _userDto = null;
    } else {
      final result = await repo.getUser();
      result.fold((l) {
        _userDto = null;
      }, (r) => {_userDto = r});
    }

    emit(_InitialPage(isAuthorized: (token != null), user: _userDto));
  }

  Future<void> exit() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('access');
    await initProfile();
  }
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initialState(
      {@Default(false) bool isAuthorized, final UserDto? user}) = _InitialPage;
  const factory ProfileState.loadingState() = _ProfileLoading;
  const factory ProfileState.errorState({@Default('') String message}) =
      _ProfileError;
  const factory ProfileState.sucess() = _ProfileSuccess;
}
