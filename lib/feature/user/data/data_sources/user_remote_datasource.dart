import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../common/constants.dart';
import '../../../../core/error/exception.dart';
import '../../../../service/dio/dio_client.dart';
import '../models/user/user.dart';

abstract class UserRemoteDataSource {
  Future<User> getInfo();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  UserRemoteDataSourceImpl({
    required this.dioClient,
    required this.sharedPreferences,
  });

  @override
  Future<User> getInfo() async {
    final user = await _getEndPoint(
      endpoint:
          '${ApiConstants.USER}/${sharedPreferences.getString(CacheConstants.CACHED_USER_ID)}',
    );
    return User.fromJson(user);
  }

  Future<dynamic> _getEndPoint({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dioClient.dio.get(
        endpoint,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioError catch (e) {
      throw ServerError();
    }
  }
}
