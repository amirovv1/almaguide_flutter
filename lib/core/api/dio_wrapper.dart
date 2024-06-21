import 'dart:developer';

import 'package:almaguide_flutter/core/api/api_helper.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioWrapper {
  Dio dio = Dio(BaseOptions(baseUrl: SERVER_));

  Dio get instance => dio;

  void path(String path) async {
    dio = Dio(
      BaseOptions(
          baseUrl: SERVER_.trim() + path.trim(),
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10)),
    )..interceptors.addAll(
        [
          ChuckerDioInterceptor(),

          PrettyDioLogger(
            request: true,
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: true,
            compact: true,
          ),
          // ChuckerDioInterceptor(),
          InterceptorsWrapper(
            onRequest: (options, handler) async {
              try {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String locale = prefs.getString('langCode') ?? 'ru';

                String? token = prefs.getString('access');

                if (token != null) {
                  options.headers = {
                    "Accept-Language": locale,
                    "Authorization": "Bearer $token"
                  };
                }
                return handler.next(options);
              } catch (e) {
                log('error-${e.toString()}');
                // throw catchError(e);
              }
            },
            onResponse:
                (Response response, ResponseInterceptorHandler handler) {
              return handler.next(response);
            },
            onError: (DioException e, ErrorInterceptorHandler handler) async {
              // if (e.response != null) {
              //   if (e.response!.statusCode == 401) {
              //     await getIt<AuthRepository>().refresh();

              //     SharedPreferences prefs =
              //         await SharedPreferences.getInstance();
              //     String locale = prefs.getString('lang') ?? 'ru';

              //     String? token = await tokenSaver.getAccessToken();
              //     String? typeToken = await tokenSaver.getTypeToken();
              //     log('TOKEN----- ${token ?? 'TOKEN NULL'}');
              //     log(' TYPE-----${typeToken ?? 'TYPE NULL'}');
              //     if (token != null) {
              //       try {
              //         e.requestOptions.headers = {
              //           "Accept-Language": locale,
              //           "Authorization": "$typeToken $token"
              //         };
              //         //  return handler.resolve(await dio.fetch(e.requestOptions));
              //       } catch (error) {
              //         return handler.next(e);
              //       }
              //     }
              //   }
              // }
              return handler.next(e);
            },
          )
        ],
      );
  }
}
