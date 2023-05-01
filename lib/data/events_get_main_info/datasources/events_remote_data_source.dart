import 'dart:convert';
import 'package:http/http.dart' as http;

import '/data/events_get_main_info/models/event.dart';
import '../../../common/constants.dart';
import '../../../core/error/exception.dart';

class EventsRemoteDataSource {
  /// Получить все мероприятия - [getEvents]

  final http.Client client;

  EventsRemoteDataSource({required this.client});

  Future<List<Event>> getEvents(int page, String name) {
    return _getEventFromUrl(
        '${ApiConstants.API_URL}${ApiConstants.EVENTS_EP}?page=${page.toString()}&name=$name');
  }

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
      throw ServerError();
    }
  }
}
