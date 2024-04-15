// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/categories/bloc/categories_main_cubit.dart' as _i15;
import '../../features/categories/data/categories_remote_ds.dart' as _i6;
import '../../features/categories/domain/categories_repository.dart' as _i7;
import '../../features/home/bloc/attraction_details_cubit.dart' as _i13;
import '../../features/home/bloc/home_cubit.dart' as _i16;
import '../../features/home/data/home_remote_ds.dart' as _i8;
import '../../features/home/domain/home_repository.dart' as _i9;
import '../../features/profile/bloc/auth_cubit/auth_cubit.dart' as _i14;
import '../../features/profile/bloc/language_cubit/language_cubit.dart' as _i10;
import '../../features/profile/bloc/profile_cubit/profile_cubit.dart' as _i11;
import '../../features/profile/bloc/sign_up_cubit/sign_up_cubit.dart' as _i12;
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
    gh.lazySingleton<_i6.CategoriesRemoteDs>(
        () => _i6.CategoriesRemoteDsImpl(gh<_i4.DioWrapper>()));
    gh.lazySingleton<_i7.CategoriesRepository>(() =>
        _i7.CategoriesRepositoryImpl(remoteDS: gh<_i6.CategoriesRemoteDs>()));
    gh.lazySingleton<_i8.HomeRemoteDS>(
        () => _i8.HomeRemoteDsImpl(gh<_i4.DioWrapper>()));
    gh.lazySingleton<_i9.HomeRepository>(
        () => _i9.HomeRepositoryImpl(remoteDS: gh<_i8.HomeRemoteDS>()));
    gh.singleton<_i10.LanguageCubit>(() => _i10.LanguageCubit());
    gh.singleton<_i11.ProfileCubit>(
        () => _i11.ProfileCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i12.SignUpCubit>(
        () => _i12.SignUpCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i13.AttractionDetailsCubit>(
        () => _i13.AttractionDetailsCubit(gh<_i9.HomeRepository>()));
    gh.singleton<_i14.AuthCubit>(
        () => _i14.AuthCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i15.CategoriesCubit>(
        () => _i15.CategoriesCubit(gh<_i7.CategoriesRepository>()));
    gh.singleton<_i16.HomeCubit>(
        () => _i16.HomeCubit(gh<_i9.HomeRepository>()));
    return this;
  }
}
