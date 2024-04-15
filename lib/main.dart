import 'package:almaguide_flutter/core/global_bloc_provider.dart';
import 'package:almaguide_flutter/core/injection/get_it.dart';
import 'package:almaguide_flutter/core/router/app_router.dart';
import 'package:almaguide_flutter/core/services/location_service.dart';
import 'package:almaguide_flutter/features/profile/bloc/language_cubit/language_cubit.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await initLocator();
  await LocationService().requestPermission();
  runApp(AlmaGuideApp());
}

class AlmaGuideApp extends StatelessWidget {
  AlmaGuideApp({super.key});
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      designSize: const Size(360, 800),
      builder: (context, child) {
        return GlobalProvider(
          child: BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              return MaterialApp.router(
                themeMode: ThemeMode.dark,
                locale: Locale(state.langCode),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                title: 'Almaguide',
                routeInformationParser: _appRouter.defaultRouteParser(),
                routerDelegate: _appRouter.delegate(),
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  iconTheme: IconThemeData(size: 24.r),
                  useMaterial3: false,
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
                      .copyWith(background: Colors.white),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
