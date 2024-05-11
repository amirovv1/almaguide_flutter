// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/categories/bloc/categories_main_cubit.dart' as _i18;
import '../../features/categories/data/categories_remote_ds.dart' as _i6;
import '../../features/categories/domain/categories_repository.dart' as _i7;
import '../../features/favorites/data/favorites_remote_ds.dart' as _i8;
import '../../features/favorites/domain/favorites_repository.dart' as _i9;
import '../../features/favorites/presentation/bloc/route_details_cubit.dart'
    as _i14;
import '../../features/home/bloc/attraction_details_cubit.dart' as _i16;
import '../../features/home/bloc/home_cubit.dart' as _i19;
import '../../features/home/data/home_remote_ds.dart' as _i10;
import '../../features/home/domain/home_repository.dart' as _i11;
import '../../features/profile/bloc/auth_cubit/auth_cubit.dart' as _i17;
import '../../features/profile/bloc/language_cubit/language_cubit.dart' as _i12;
import '../../features/profile/bloc/profile_cubit/profile_cubit.dart' as _i13;
import '../../features/profile/bloc/sign_up_cubit/sign_up_cubit.dart' as _i15;
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
    gh.lazySingleton<_i8.FavoritesRemoteDs>(
        () => _i8.FavoritesRemoteDsImpl(gh<_i4.DioWrapper>()));
    gh.lazySingleton<_i9.FavoritesRepository>(() =>
        _i9.FavoritesRepositoryImpl(remoteDS: gh<_i8.FavoritesRemoteDs>()));
    gh.lazySingleton<_i10.HomeRemoteDS>(
        () => _i10.HomeRemoteDsImpl(gh<_i4.DioWrapper>()));
    gh.lazySingleton<_i11.HomeRepository>(
        () => _i11.HomeRepositoryImpl(remoteDS: gh<_i10.HomeRemoteDS>()));
    gh.singleton<_i12.LanguageCubit>(() => _i12.LanguageCubit());
    gh.singleton<_i13.ProfileCubit>(
        () => _i13.ProfileCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i14.RouteDetailsCubit>(
        () => _i14.RouteDetailsCubit(gh<_i9.FavoritesRepository>()));
    gh.singleton<_i15.SignUpCubit>(
        () => _i15.SignUpCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i16.AttractionDetailsCubit>(
        () => _i16.AttractionDetailsCubit(gh<_i11.HomeRepository>()));
    gh.singleton<_i17.AuthCubit>(
        () => _i17.AuthCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i18.CategoriesCubit>(
        () => _i18.CategoriesCubit(gh<_i7.CategoriesRepository>()));
    gh.singleton<_i19.HomeCubit>(
        () => _i19.HomeCubit(gh<_i11.HomeRepository>()));
    return this;
  }
}
