import 'package:almaguide_flutter/core/injection/get_it.dart';
import 'package:almaguide_flutter/features/categories/bloc/categories_details_cubit.dart';
import 'package:almaguide_flutter/features/categories/bloc/categories_main_cubit.dart';
import 'package:almaguide_flutter/features/categories/bloc/payment_cubit.dart';
import 'package:almaguide_flutter/features/categories/bloc/review_cubit.dart';
import 'package:almaguide_flutter/features/categories/bloc/tour_detail_cubit.dart';
import 'package:almaguide_flutter/features/categories/bloc/tour_list_cubit.dart';
import 'package:almaguide_flutter/features/favorites/presentation/bloc/route_details_cubit.dart';
import 'package:almaguide_flutter/features/home/bloc/attraction_details_cubit.dart';
import 'package:almaguide_flutter/features/home/bloc/home_cubit.dart';
import 'package:almaguide_flutter/features/profile/bloc/auth_cubit/auth_cubit.dart';
import 'package:almaguide_flutter/features/profile/bloc/language_cubit/language_cubit.dart';
import 'package:almaguide_flutter/features/profile/bloc/my_tour_cubit/my_tour_cubit.dart';
import 'package:almaguide_flutter/features/profile/bloc/profile_cubit/profile_cubit.dart';
import 'package:almaguide_flutter/features/profile/bloc/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalProvider extends StatelessWidget {
  const GlobalProvider({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (context) => getIt<LanguageCubit>(),
        ),
        BlocProvider<AuthCubit>(
          create: (context) => getIt<AuthCubit>(),
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => getIt<SignUpCubit>(),
        ),
        BlocProvider<ProfileCubit>(
          create: (context) => getIt<ProfileCubit>(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => getIt<HomeCubit>(),
        ),
        BlocProvider<CategoriesCubit>(
          create: (context) => getIt<CategoriesCubit>(),
        ),
        BlocProvider<AttractionDetailsCubit>(
          create: (context) => getIt<AttractionDetailsCubit>(),
        ),
        BlocProvider<RouteDetailsCubit>(
          create: (context) => getIt<RouteDetailsCubit>(),
        ),
        BlocProvider<TourListCubit>(
          create: (context) => getIt<TourListCubit>(),
        ),
        BlocProvider<TourDetailsCubit>(
          create: (context) => getIt<TourDetailsCubit>(),
        ),
        BlocProvider<ReviewsCubit>(
          create: (context) => getIt<ReviewsCubit>(),
        ),
         BlocProvider<PaymentCubit>(
          create: (context) => getIt<PaymentCubit>(),
        ),
        BlocProvider<MyTourCubit>(
          create: (context) => getIt<MyTourCubit>(),
        ),
        BlocProvider<CategoriesDetailsCubit>(
          create: (context) => getIt<CategoriesDetailsCubit>(),
        ),
      ],
      child: child,
    );
  }
}
