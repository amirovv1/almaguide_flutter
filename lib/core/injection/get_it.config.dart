// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/categories/bloc/categories_details_cubit.dart' as _i25;
import '../../features/categories/bloc/categories_main_cubit.dart' as _i24;
import '../../features/categories/bloc/payment_cubit.dart' as _i14;
import '../../features/categories/bloc/review_cubit.dart' as _i16;
import '../../features/categories/bloc/tour_detail_cubit.dart' as _i19;
import '../../features/categories/bloc/tour_list_cubit.dart' as _i20;
import '../../features/categories/bloc/tour_reviews_bloc.dart' as _i21;
import '../../features/categories/data/categories_remote_ds.dart' as _i6;
import '../../features/categories/domain/categories_repository.dart' as _i7;
import '../../features/favorites/data/favorites_remote_ds.dart' as _i8;
import '../../features/favorites/domain/favorites_repository.dart' as _i9;
import '../../features/favorites/presentation/bloc/route_details_cubit.dart'
    as _i17;
import '../../features/home/bloc/attraction_details_cubit.dart' as _i22;
import '../../features/home/bloc/home_cubit.dart' as _i26;
import '../../features/home/data/home_remote_ds.dart' as _i10;
import '../../features/home/domain/home_repository.dart' as _i11;
import '../../features/profile/bloc/auth_cubit/auth_cubit.dart' as _i23;
import '../../features/profile/bloc/language_cubit/language_cubit.dart' as _i12;
import '../../features/profile/bloc/my_tour_cubit/my_tour_cubit.dart' as _i13;
import '../../features/profile/bloc/profile_cubit/profile_cubit.dart' as _i15;
import '../../features/profile/bloc/sign_up_cubit/sign_up_cubit.dart' as _i18;
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
    gh.singleton<_i13.MyTourCubit>(
        () => _i13.MyTourCubit(gh<_i7.CategoriesRepository>()));
    gh.singleton<_i14.PaymentCubit>(
        () => _i14.PaymentCubit(gh<_i7.CategoriesRepository>()));
    gh.singleton<_i15.ProfileCubit>(
        () => _i15.ProfileCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i16.ReviewsCubit>(
        () => _i16.ReviewsCubit(gh<_i7.CategoriesRepository>()));
    gh.singleton<_i17.RouteDetailsCubit>(
        () => _i17.RouteDetailsCubit(gh<_i9.FavoritesRepository>()));
    gh.singleton<_i18.SignUpCubit>(
        () => _i18.SignUpCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i19.TourDetailsCubit>(
        () => _i19.TourDetailsCubit(gh<_i7.CategoriesRepository>()));
    gh.singleton<_i20.TourListCubit>(
        () => _i20.TourListCubit(gh<_i7.CategoriesRepository>()));
    gh.singleton<_i21.TourReviewsCubit>(
        () => _i21.TourReviewsCubit(gh<_i7.CategoriesRepository>()));
    gh.singleton<_i22.AttractionDetailsCubit>(
        () => _i22.AttractionDetailsCubit(gh<_i11.HomeRepository>()));
    gh.singleton<_i23.AuthCubit>(
        () => _i23.AuthCubit(gh<_i5.AuthRepository>()));
    gh.singleton<_i24.CategoriesCubit>(
        () => _i24.CategoriesCubit(gh<_i7.CategoriesRepository>()));
    gh.singleton<_i25.CategoriesDetailsCubit>(() => _i25.CategoriesDetailsCubit(
          gh<_i7.CategoriesRepository>(),
          gh<_i11.HomeRepository>(),
        ));
    gh.singleton<_i26.HomeCubit>(
        () => _i26.HomeCubit(gh<_i11.HomeRepository>()));
    return this;
  }
}
