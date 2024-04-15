// ignore_for_file: constant_identifier_names

const SERVER_ = 'http://51.20.245.100/api';

mixin EndPoints {
  static const String createJWT = '/auth/jwt/create/';
  static const String signUp = '/auth/sign-up/';
  static const String mainAttraction = '/attractions/main/';
  static const String mainSubcategories = '/categories/subcategories/';
  static const String popularCategories = '/categories/popular/';
  static const String attractions = '/attractions/';
  static const String reviewAttraction = '/reviews/attraction/';
  static const String user = '/users/me/';
    static const String routeAttraction = '/attractions/routes';

}
