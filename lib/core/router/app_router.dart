import 'package:almaguide_flutter/features/categories/presentation/screens/categories_details_page.dart';
import 'package:almaguide_flutter/features/categories/presentation/screens/categories_main_page.dart';
import 'package:almaguide_flutter/features/categories/presentation/screens/payment_succes_page.dart';
import 'package:almaguide_flutter/features/categories/presentation/screens/paytment_page.dart';
import 'package:almaguide_flutter/features/categories/presentation/screens/tour_details_page.dart';
import 'package:almaguide_flutter/features/categories/presentation/screens/tour_list_page.dart';
import 'package:almaguide_flutter/features/categories/presentation/screens/tour_review_page.dart';
import 'package:almaguide_flutter/features/favorites/presentation/screens/favorites_page.dart';
import 'package:almaguide_flutter/features/favorites/presentation/screens/route_details_page.dart';
import 'package:almaguide_flutter/features/home/presentation/screens/attraction_detail_page.dart';
import 'package:almaguide_flutter/features/home/presentation/screens/home_page.dart';
import 'package:almaguide_flutter/features/home/presentation/screens/launcher_app.dart';
import 'package:almaguide_flutter/features/home/presentation/screens/search_page.dart';
import 'package:almaguide_flutter/features/home/presentation/screens/web_view_page.dart';
import 'package:almaguide_flutter/features/map/presentation/screens/map_page.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/auth_page.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/enter_new_password_page.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/forgot_password_page.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/my_tours_page.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/otp_forgot_password_page.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/password_success_change.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/privat_policy_page.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/profile_page.dart';
import 'package:almaguide_flutter/features/profile/presentation/screens/sign_up_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen|TabBar|Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: LauncherAppRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: CategoriesMainRoute.page),
          AutoRoute(page: MapRoute.page),
          AutoRoute(page: FavoritesRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: OtpForgotPasswordRoute.page),
        AutoRoute(page: EnterNewPasswordRoute.page),
        AutoRoute(page: PasswordSuccessChangeRoute.page),
        AutoRoute(page: AttractionDetailRoute.page),
        AutoRoute(page: PrivatPolicyRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: WebViewRoute.page),
        AutoRoute(page: CategoryDetailRoute.page),
        AutoRoute(page: RouteDetailRoute.page),
        AutoRoute(page: TourListRoute.page),
        AutoRoute(page: TourDetailsRoute.page),
        AutoRoute(page: TourReviewRoute.page),
        AutoRoute(page: PaymentRoute.page),
        AutoRoute(page: PaymentSuccessRoute.page),
      AutoRoute(page: MyTourListRoute.page),

      ];
}
