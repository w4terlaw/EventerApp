import 'package:dio/dio.dart';
import 'package:eventer_app/feature/user/data/models/favorite_organizer/favorite_organizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../common/constants.dart';
import '../../../../core/error/exception.dart';
import '../../../../service/dio/dio_client.dart';

abstract class FavoriteOrganizerRemoteDataSource {
  Future<List<FavoriteOrganizer>> getFavorites();
}

class FavoriteOrganizerRemoteDataSourceImpl
    implements FavoriteOrganizerRemoteDataSource {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  FavoriteOrganizerRemoteDataSourceImpl({
    required this.dioClient,
    required this.sharedPreferences,
  });

  @override
  Future<List<FavoriteOrganizer>> getFavorites() async {
    final favoriteOrganizers = await _getEndPoint(
      endpoint: ApiConstants.FAVORITE_ORGANIZER_USER_FAVORITE_ORGANIZERS,
    );
    return (favoriteOrganizers as List)
        .map((e) => FavoriteOrganizer.fromJson(e))
        .toList();
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
