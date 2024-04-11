// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/profile/bloc/auth_cubit/auth_cubit.dart' as _i8;
import '../../features/profile/bloc/language_cubit/language_cubit.dart' as _i6;
import '../../features/profile/bloc/sign_up_cubit/sign_up_cubit.dart' as _i7;
import '../../features/profile/data/auth_remote_ds.dart' as _i3;
import '../../features/profile/domain/auth_repository.dart' as _i5;
import '../api/dio_wrapper.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthRemoteDs>(
        () => _i3.AuthRemoteDsImpl(gh<_i4.DioWrapper>()));
    gh.lazySingleton<_i5.AuthRepository>(
        () => _i5.AuthRepositoryImpl(remoteDS: gh<_i3.AuthRemoteDs>()));
    gh.singleton<_i6.LanguageCubit>(() => _i6.LanguageCubit());
    gh.singleton<_i7.SignUpCubit>(
        () => _i7.SignUpCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i8.AuthCubit>(() => _i8.AuthCubit(gh<_i5.AuthRepository>()));
    return this;
  }
}
