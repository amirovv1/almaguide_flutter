// ignore_for_file: constant_identifier_names

const SERVER_ = 'http://51.20.245.100/api';

mixin EndPoints {
  static const String createJWT = '/auth/jwt/create/';
  static const String signUp = '/auth/sign-up/';
  static const String forgotPassword = "/auth/password/forgot-password/";
  static const String requestNewPassword = "/auth/password/new-password/";
  static const String verifyOtp = "/auth/password/verify-otp/";

  static const String mainAttraction = '/attractions/main/';
  static const String mainSubcategories = '/categories/subcategories/';
  static const String subsByCategory = '/categories/subcategories/list/';

  static const String popularCategories = '/categories/popular/';
  static const String categories = '/categories/';
  static const String attractions = '/attractions/';

  static const String tours = '/tours/';
  static const String myTours = '/tours/my';

  static const String user = '/users/me/';
  static const String routeAttraction = '/attractions/routes';
  static String getAttractionRoutUrl(int id) =>
      "/attractions/routes/$id/yandex/";
  static String deleteFromFavorites(int id) =>
      "/attractions/favourite/$id/chosen/";
  static const String getFavorites = "/attractions/favourite";
  static const String getStories = "/stories/";
  static const String makeRoute = "/attractions/routes/make/";
  static const String routes = "/attractions/routes/";
  static String getAttractionByRouteId(int id) =>
      "/attractions/routes/$id/attractions/";
  static String makeWebRouteById(int id) => "/attractions/routes/$id/yandex/";
  static String tourById(int id) => "/tours/$id/";
  static const String reviewTour = "/reviews/tour/";
  static const String reviewAttraction = '/reviews/attraction/';

  static const String pay = "/orders/";
}
