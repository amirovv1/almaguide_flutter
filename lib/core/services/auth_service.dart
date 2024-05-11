import 'package:shared_preferences/shared_preferences.dart';

class AuthUtil {
  static Future<bool> isAuthorized() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? access = prefs.getString('access');
    return access != null;
  }
}