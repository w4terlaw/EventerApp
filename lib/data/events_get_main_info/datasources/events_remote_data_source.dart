import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:eventer_app/data/events_get_main_info/models/event.dart';

import '../../../common/constants.dart';
import '../../../core/error/exception.dart';

abstract class EventsRemoteDataSourceInterface {
  /// endpoint /event?page=1&name=string
  /// Error [ServerException]
  Future<List<Event>> getEvents(int page, String name);
}

class EventsRemoteDataSource implements EventsRemoteDataSourceInterface {
  final http.Client client;

  EventsRemoteDataSource({required this.client});

  @override
  Future<List<Event>> getEvents(int page, String name) =>
      _getEventFromUrl('${Constants.API_URL}${Constants.EVENTS_EP}?page=${page.toString()}&name=$name');

  Future<List<Event>> _getEventFromUrl(String url) async {
    print(url);

    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final events = json.decode(response.body);
      return (events as List).map((event) => Event.fromJson(event)).toList();
    } else {
      throw ServerException();
    }
  }
}
