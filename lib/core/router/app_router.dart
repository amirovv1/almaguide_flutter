import 'package:almaguide_flutter/features/categories/presentation/screens/categories_main_page.dart';
import 'package:almaguide_flutter/features/favorites/presentation/screens/favorites_page.dart';
import 'package:almaguide_flutter/features/home/presentation/screens/home_page.dart';
import 'package:almaguide_flutter/features/home/presentation/screens/launcher_app.dart';
import 'package:almaguide_flutter/features/map/presentation/screens/map_page.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/profile_page.dart';
import 'package:auto_route/auto_route.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen|TabBar|Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
            page: LauncherAppRoute.page,
            children: [AutoRoute(page: HomeRoute.page),
            AutoRoute(page: CategoriesMainRoute.page),
            AutoRoute(page: MapRoute.page),
            AutoRoute(page: FavoritesRoute.page),
                AutoRoute(page: ProfileRoute.page)

            
            
            
            ])
      ];
}
