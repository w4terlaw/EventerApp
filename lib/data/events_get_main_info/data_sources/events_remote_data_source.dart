import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:eventer_app/data/events_get_main_info/models/event.dart';

import '../../../common/constants.dart';
import '../../../core/error/exception.dart';

abstract class EventsRemoteDataSource {
  /// endpoint /event?page=1&name=string
  /// Error [ServerException]
  Future<List<Event>> getEvents(int page, String name);
}
