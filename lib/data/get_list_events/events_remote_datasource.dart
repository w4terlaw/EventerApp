import 'dart:convert';

import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/data/get_list_events/models/event.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

abstract class EventsRemoteDataSource {
  /// GET - /event?page=<int>&name=<string>
  Future<List<Event>> getListEvents(int page, String name);

  /// GET - /event/<int>
  Future<Event> getEvent(int id);
}

class EventsRemoteDataSourceImpl implements EventsRemoteDataSource {
  final http.Client client;
  final SharedPreferences sharedPreferences;

  EventsRemoteDataSourceImpl(
      {required this.client, required this.sharedPreferences});

  @override
  Future<List<Event>> getListEvents(int page, String name) async{
    final events = await _getEventFromUrl(
        '${ApiConstants.API_URL}${ApiConstants.EVENT}?page=${page
            .toString()}&name=$name');
    return (events as List).map((event) => Event.fromJson(event)).toList();
  }

  @override
  Future<Event> getEvent(int id) async {
    final event = await _getEventFromUrl(
        '${ApiConstants.API_URL}${ApiConstants.EVENT}/$id');
    return Event.fromJson(event);
  }

  Future<T> _getEventFromUrl<T>(String url) async {
    print(url);
    final jwt = sharedPreferences.getString(CacheConstants.CACHED_ACCESS_TOKEN);
    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Authorization': jwt!,
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else if (response.statusCode == 401) {
      // sharedPreferences.remove(CacheConstants.CACHED_ACCESS_TOKEN);
      throw UnauthorizedError();
    } else {
      throw ServerError();
    }
  }
}
