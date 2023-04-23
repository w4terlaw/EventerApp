// import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:eventer_app/data/events_get_main_info/data_sources/events_remote_data_source.dart';

// import 'package:eventer_app/common/constants.dart';
// import 'package:http/http.dart' as http;

import '../../../core/error/exception.dart';
import '../../../core/platform/network_info.dart';
import '/core/error/failure.dart';
import '../models/event.dart';

abstract class EventsRepository {
  Future<Either<Failure, List<Event>>> getEvents(int page, String name);
}

// class EventsRepository{
//   final url = Constants.API_URL + Constants.EVENTS_EP;
//
//   Future<List<Event>> getEvents(int page, String name) async {
//     final endpoint = '$url?page=${page.toString()}&name=$name';
//     print(endpoint);
//     try {
//       var response = await http.get(
//         Uri.parse(endpoint),
//       );
//       var jsonResult = json.decode(response.body);
//       return (jsonResult as List)
//           .map((event) => Event.fromJson(event))
//           .toList();
//     } catch (e) {
//       throw Exception(e.toString());
//     }
//   }
// }
