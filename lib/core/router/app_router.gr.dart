// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AttractionDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AttractionDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AttractionDetailScreen(
          key: args.key,
          attractId: args.attractId,
        ),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    CategoriesMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoriesMainScreen(),
      );
    },
    CategoryDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryDetailScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    EnterNewPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EnterNewPasswordPage(),
      );
    },
    FavoritesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritesScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LauncherAppRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LauncherAppScreen(),
      );
    },
    MapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MapScreen(),
      );
    },
    OtpForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OtpForgotPasswordPage(),
      );
    },
    PasswordSuccessChangeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PasswordSuccessChangePage(),
      );
    },
    PrivatPolicyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PrivatPolicyScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    RouteDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RouteDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RouteDetailScreen(
          key: args.key,
          title: args.title,
          routeId: args.routeId,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WebViewScreen(
          key: args.key,
          url: args.url,
        ),
      );
    },
  };
}

/// generated route for
/// [AttractionDetailScreen]
class AttractionDetailRoute extends PageRouteInfo<AttractionDetailRouteArgs> {
  AttractionDetailRoute({
    Key? key,
    required int attractId,
    List<PageRouteInfo>? children,
  }) : super(
          AttractionDetailRoute.name,
          args: AttractionDetailRouteArgs(
            key: key,
            attractId: attractId,
          ),
          initialChildren: children,
        );

  static const String name = 'AttractionDetailRoute';

  static const PageInfo<AttractionDetailRouteArgs> page =
      PageInfo<AttractionDetailRouteArgs>(name);
}

class AttractionDetailRouteArgs {
  const AttractionDetailRouteArgs({
    this.key,
    required this.attractId,
  });

  final Key? key;

  final int attractId;

  @override
  String toString() {
    return 'AttractionDetailRouteArgs{key: $key, attractId: $attractId}';
  }
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoriesMainScreen]
class CategoriesMainRoute extends PageRouteInfo<void> {
  const CategoriesMainRoute({List<PageRouteInfo>? children})
      : super(
          CategoriesMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryDetailScreen]
class CategoryDetailRoute extends PageRouteInfo<CategoryDetailRouteArgs> {
  CategoryDetailRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryDetailRoute.name,
          args: CategoryDetailRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryDetailRoute';

  static const PageInfo<CategoryDetailRouteArgs> page =
      PageInfo<CategoryDetailRouteArgs>(name);
}

class CategoryDetailRouteArgs {
  const CategoryDetailRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'CategoryDetailRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [EnterNewPasswordPage]
class EnterNewPasswordRoute extends PageRouteInfo<void> {
  const EnterNewPasswordRoute({List<PageRouteInfo>? children})
      : super(
          EnterNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterNewPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoritesScreen]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LauncherAppScreen]
class LauncherAppRoute extends PageRouteInfo<void> {
  const LauncherAppRoute({List<PageRouteInfo>? children})
      : super(
          LauncherAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'LauncherAppRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MapScreen]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OtpForgotPasswordPage]
class OtpForgotPasswordRoute extends PageRouteInfo<void> {
  const OtpForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          OtpForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpForgotPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PasswordSuccessChangePage]
class PasswordSuccessChangeRoute extends PageRouteInfo<void> {
  const PasswordSuccessChangeRoute({List<PageRouteInfo>? children})
      : super(
          PasswordSuccessChangeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordSuccessChangeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PrivatPolicyScreen]
class PrivatPolicyRoute extends PageRouteInfo<void> {
  const PrivatPolicyRoute({List<PageRouteInfo>? children})
      : super(
          PrivatPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivatPolicyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RouteDetailScreen]
class RouteDetailRoute extends PageRouteInfo<RouteDetailRouteArgs> {
  RouteDetailRoute({
    Key? key,
    required String title,
    required int routeId,
    List<PageRouteInfo>? children,
  }) : super(
          RouteDetailRoute.name,
          args: RouteDetailRouteArgs(
            key: key,
            title: title,
            routeId: routeId,
          ),
          initialChildren: children,
        );

  static const String name = 'RouteDetailRoute';

  static const PageInfo<RouteDetailRouteArgs> page =
      PageInfo<RouteDetailRouteArgs>(name);
}

class RouteDetailRouteArgs {
  const RouteDetailRouteArgs({
    this.key,
    required this.title,
    required this.routeId,
  });

  final Key? key;

  final String title;

  final int routeId;

  @override
  String toString() {
    return 'RouteDetailRouteArgs{key: $key, title: $title, routeId: $routeId}';
  }
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WebViewScreen]
class WebViewRoute extends PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    Key? key,
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const PageInfo<WebViewRouteArgs> page =
      PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, url: $url}';
  }
}
