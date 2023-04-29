import 'dart:async';
import 'dart:convert';

import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/data/authentication/models/auth.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRemoteDataSource {
  Future<Auth> userLogin(String email, String password);

  Future<Auth> userRegistration();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;
  final SharedPreferences sharedPreferences;

  AuthRemoteDataSourceImpl({
    required this.client,
    required this.sharedPreferences,
  });

  @override
  Future<Auth> userLogin(String email, String password) async {
    const authLoginUrl = ApiConstants.API_URL + ApiConstants.AUTH_EP;

    print(authLoginUrl);
    try {
    final response = await client.post(
      Uri.parse(authLoginUrl),
      body: json.encode({
        "email": email,
        "password": password,
      }),
      headers: {
        "Content-Type": "application/json",
      },
    );
    print(response.body);
    if (response.statusCode == 200) {
      final authResponse = json.decode(response.body);
      await sharedPreferences.setString(CacheConstants.CACHED_ACCESS_TOKEN,
          '${authResponse['token_type']} ${authResponse['access_token']}');
      await sharedPreferences.setString(
          CacheConstants.CACHED_USER_ID, '${authResponse['user_id']}');
      return Auth.fromJson(authResponse);
    } else {
      throw ServerException();
    }
    } on SocketException {
      throw NetworkException();
    } on TimeoutException {
      throw NetworkException();
    } on FormatException {
      throw ServerException();
    } on http.ClientException {
      throw NetworkException();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Auth> userRegistration() {
    // TODO: implement userRegistration
    throw UnimplementedError();
  }
}
