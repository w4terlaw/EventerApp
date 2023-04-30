import 'dart:convert';
import 'package:eventer_app/common/constants.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:http/http.dart' as http;
import 'package:eventer_app/data/events_get_main_info/models/event.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class EventsRemoteDataSource {
  /// endpoint /event?page=1&name=string
  /// Error [ServerException]
  Future<List<Event>> getEvents(int page, String name);
}

class EventsRemoteDataSourceImpl implements EventsRemoteDataSource {
  final http.Client client;
  final SharedPreferences sharedPreferences;

  EventsRemoteDataSourceImpl(
      {required this.client, required this.sharedPreferences});

  @override
  Future<List<Event>> getEvents(int page, String name) => _getEventFromUrl(
      '${ApiConstants.API_URL}${ApiConstants.EVENTS_EP}?page=${page.toString()}&name=$name');

  Future<List<Event>> _getEventFromUrl(String url) async {
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
      final events = json.decode(response.body);
      return (events as List).map((event) => Event.fromJson(event)).toList();
    } else if (response.statusCode == 401) {
      // sharedPreferences.remove(CacheConstants.CACHED_ACCESS_TOKEN);
      throw UnauthorizedException();
    } else {
      throw ServerException();
    }
  }
}
