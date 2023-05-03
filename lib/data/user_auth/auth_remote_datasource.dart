import 'dart:async';

import 'package:dio/dio.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/data/user_auth/models/auth.dart';
import 'package:eventer_app/service/dio_config.dart';
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
    // const authLoginUrl = ApiConstants.API_URL + ApiConstants.AUTH_LOGIN;

    // print(authLoginUrl);
    try {
      final response = await dioClient.dio.post(
        ApiConstants.AUTH_LOGIN,
        data: {
          "email": email,
          "password": password,
        },
      );
      // if (response.statusCode == 200) {
      final authResponse = response.data;
      await sharedPreferences.setString(CacheConstants.CACHED_ACCESS_TOKEN,
          '${authResponse['token_type']} ${authResponse['access_token']}');
      await sharedPreferences.setString(
          CacheConstants.CACHED_USER_ID, '${authResponse['user_id']}');
      return Auth.fromJson(authResponse);
      // } else if (response.statusCode == 404) {
      //   throw NotFoundError();
      // } else if (response.statusCode == 401) {
      //   throw UnauthorizedError();
      // } else {
      //   throw ServerError();
      // }
    } on DioError catch (e) {
      if (e.response?.statusCode == 401 || e.response?.statusCode == 404) {
        throw UnauthorizedError();
      } else {
        throw ServerError();
      }
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
