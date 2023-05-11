import 'dart:async';

import 'package:dio/dio.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/feature/data/user_auth/models/auth.dart';
import 'package:eventer_app/service/dio/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRemoteDataSource {
  Future<Auth> userLogin(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  AuthRemoteDataSourceImpl({
    required this.dioClient,
    required this.sharedPreferences,
  });

  @override
  Future<Auth> userLogin(String email, String password) async {
    try {
      final response = await dioClient.dio.post(
        ApiConstants.AUTH_LOGIN,
        data: {
          "email": email,
          "password": password,
        },
      );
      final authResponse = response.data;

      await sharedPreferences.setString(
          CacheConstants.CACHED_ACCESS_TOKEN, '${authResponse['accessToken']}');
      await sharedPreferences.setString(CacheConstants.CACHED_REFRESH_TOKEN,
          '${authResponse['refreshToken']}');

      return Auth.fromJson(authResponse);
    } on DioError catch (e) {
      if (e.response?.statusCode == 401 || e.response?.statusCode == 404) {
        throw EmailAndPassError();
      } else {
        throw ServerError();
        // }
        // } on SocketError {
        //   throw NetworkError();
        // } on TimeoutException {
        //   throw NetworkError();
        // } on FormatException {
        //   throw ServerError();
        // } on http.ClientException {
        //   throw NetworkError();
        // }
      }
    }
  }
}
