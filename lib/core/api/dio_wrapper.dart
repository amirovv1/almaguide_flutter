import 'dart:developer';

import 'package:almaguide_flutter/core/api/api_helper.dart';
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
          PrettyDioLogger(
            request: true,
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: true,
            compact: true,
          ),
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
              return handler.next(e);
            },
          )
        ],
      );
  }
}
