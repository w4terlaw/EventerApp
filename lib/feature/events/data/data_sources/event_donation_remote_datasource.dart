import 'dart:async';

import 'package:dio/dio.dart';
import 'package:eventer_app/feature/events/data/models/event_donation/event_donation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../common/constants.dart';
import '../../../../core/error/exception.dart';
import '../../../../service/dio/dio_client.dart';

abstract class EventDonationRemoteDataSource {
  Future<EventDonation> makeDonation(
    int eventId,
    double amount,
  );
}

class EventDonationRemoteDataSourceImpl
    implements EventDonationRemoteDataSource {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  EventDonationRemoteDataSourceImpl({
    required this.dioClient,
    required this.sharedPreferences,
  });

  @override
  Future<EventDonation> makeDonation(int eventId, double amount) async {
    final eventDonation = await _getEndPoint(
      endpoint: ApiConstants.EVENT_DONATION,
      data: {
        "dateTime": DateTime.now().toIso8601String(),
        "amount": amount,
        "comment": "",
        "eventId": eventId,
        "userId": sharedPreferences.getString(CacheConstants.CACHED_USER_ID),
      },
    );
    // print(eventDonations);
    return EventDonation.fromJson(eventDonation);
  }

  Future<dynamic> _getEndPoint({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    Object? data,
  }) async {
    try {
      final response = await dioClient.dio.post(
        endpoint,
        queryParameters: queryParameters,
        data: data,
      );
      return response.data;
    } on DioError catch (e) {
      throw ServerError();
    }
  }
}
