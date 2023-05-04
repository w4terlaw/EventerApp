import 'package:dio/dio.dart';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/data/get_list_events/models/event.dart';
import 'package:eventer_app/service/dio/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class EventsRemoteDataSource {
  /// GET - /event?page=<int>&name=<string>
  Future<List<Event>> getListEvents(int page, String name);

  /// GET - /event/<int>
  Future<Event> getEvent(int id);
}

class EventsRemoteDataSourceImpl implements EventsRemoteDataSource {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  EventsRemoteDataSourceImpl(
      {required this.dioClient, required this.sharedPreferences});

  @override
  Future<List<Event>> getListEvents(int page, String name) async {
    final events = await _getEventFromUrl(
      ApiConstants.EVENT,
      queryParameters: {
        'page': page,
        'name': name,
      },
    );
    return (events as List).map((event) => Event.fromJson(event)).toList();
  }

  @override
  Future<Event> getEvent(int id) async {
    final event = await _getEventFromUrl(
      "${ApiConstants.EVENT}/$id",
    );
    return Event.fromJson(event);
  }

  Future<dynamic> _getEventFromUrl(String endpoint,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dioClient.dio.get(
        endpoint,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioError catch (e) {
      // if (e.response?.statusCode == 401) {
      //   throw UnauthorizedError();
      // } else {
      throw ServerError();
      // }
      // } else if (response.statusCode == 401) {
      //   // sharedPreferences.remove(CacheConstants.CACHED_ACCESS_TOKEN);
      //   throw UnauthorizedError();
      // } else {
      //   throw ServerError();
      // }
    }
  }
}
