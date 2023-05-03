import 'package:dio/dio.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioClient {
  final SharedPreferences sharedPreferences;
  final Dio _dio = Dio();

  DioClient({required this.sharedPreferences}) {
    _dio.options = BaseOptions(
      baseUrl: ApiConstants.API_URL,
      // the place for your base url
      headers: {
        // 'Authorization': sharedPreferences.getString(CacheConstants.CACHED_ACCESS_TOKEN) ?? '',
        'Content-Type': 'application/json',
      },
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      sendTimeout: const Duration(seconds: 3),
    );
    _dio.interceptors.add(LoggingInterceptor());
  }

  Dio get dio => _dio;
}

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      print("--> ${options.method} ${options.uri.toString()}");
      print("Body: ${options.data}");
    }
    // print("Headers: ${options.headers}");

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      print(
          "<-- ${response.statusCode} ");
              // "${response.requestOptions.uri.toString()}");
      // print("Headers: ${response.headers}");
      print("Response: ${response.data}");
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      print("<-- Error --> ${err.requestOptions.uri.toString()}");
      print("Error: ${err.response?.statusCode} ${err.response?.data}");
    }
    // print("URL: ${err.requestOptions.uri.toString()}");
    // print("Headers: ${err.requestOptions.headers}");
    // print("Response: ${err.response?.data}");
    // print("Error: ${err.message}");
    super.onError(err, handler);
  }
}
