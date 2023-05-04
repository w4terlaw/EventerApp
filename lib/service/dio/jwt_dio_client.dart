import 'package:dio/dio.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/locator_service.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JwtDioClient {
  final Dio _dio = Dio();

  JwtDioClient() {
    _dio.options = BaseOptions(
      baseUrl: ApiConstants.API_URL,
      headers: {'Content-Type': 'application/json'},
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      sendTimeout: const Duration(seconds: 3),
    );

    dio.interceptors.add(
      JwtInterceptor(
        sharedPreferences: sl<SharedPreferences>(),
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: false,
        responseHeader: false,
        error: true,
        compact: true,
        // maxWidth: 30,
      ),
    );
  }

  Dio get dio => _dio;
}

class JwtInterceptor extends Interceptor {
  final SharedPreferences sharedPreferences;

  JwtInterceptor({required this.sharedPreferences});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final refreshJwt =
        sharedPreferences.getString(CacheConstants.CACHED_REFRESH_TOKEN);
    if (refreshJwt != null) {
      bool hasExpired = JwtDecoder.isExpired(refreshJwt);
      if (hasExpired) {
        print('refreshJwt УМЕРРРР$refreshJwt');
      } else {
        options.headers['Authorization'] = 'Bearer $refreshJwt';
      }
    }
    super.onRequest(options, handler);
  }
}
