import 'package:dio/dio.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/locator_service.dart';
import 'package:eventer_app/service/dio/jwt_dio_client.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioClient {
  final Dio _dio = Dio();

  DioClient() {
    _dio.options = BaseOptions(
      baseUrl: ApiConstants.API_URL,
      headers: {'Content-Type': 'application/json'},
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      sendTimeout: const Duration(seconds: 3),
    );

    _dio.interceptors.add(
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
        // maxWidth: 100,
      ),
    );
  }

  Dio get dio => _dio;
}

class JwtInterceptor extends Interceptor {
  final SharedPreferences sharedPreferences;

  JwtInterceptor({required this.sharedPreferences});

  final JwtDioClient jwtDioClient = sl<JwtDioClient>();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final jwt = sharedPreferences.getString(CacheConstants.CACHED_ACCESS_TOKEN);
    if (jwt != null) {
      String jwtSample = 'Bearer ';
      bool hasExpired = JwtDecoder.isExpired(jwt);

      if (hasExpired) {
        final newJwt = await fetchNewToken();
        jwtSample += newJwt;
      } else {
        jwtSample += jwt;
      }

      options.headers['Authorization'] = jwtSample;
    }
    super.onRequest(options, handler);
  }

  Future<String> fetchNewToken() async {
    final response =
        await jwtDioClient.dio.post(ApiConstants.AUTH_REFRESH_TOKEN);
    final newJwt = response.data['accessToken'];
    final newRefreshJwt = response.data['refreshToken'];
    await sharedPreferences.setString(
        CacheConstants.CACHED_ACCESS_TOKEN, newJwt);
    await sharedPreferences.setString(
        CacheConstants.CACHED_REFRESH_TOKEN, newRefreshJwt);
    return newJwt;
  }
}
