import 'dart:async';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../common/constants.dart';
import '../../../../core/error/exception.dart';
import '../../../../service/dio/dio_client.dart';
import '../models/booking.dart';
import '../models/event_dates_checkbox.dart';

abstract class EventBookingRemoteDataSource {
  Future<Booking> eventBooking(int eventId, EventDatesCheckbox eventDates);
  Future<List<Booking>> myEventBookings(int eventId);
}

class EventBookingRemoteDataSourceImpl implements EventBookingRemoteDataSource {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  EventBookingRemoteDataSourceImpl({
    required this.dioClient,
    required this.sharedPreferences,
  });

  @override
  Future<Booking> eventBooking(int eventId, EventDatesCheckbox eventDates) async {
    try {
      final response = await dioClient.dio.post(
        ApiConstants.BOOKING,
        data: {
          "dateTime": DateTime.now().toIso8601String(),
          "eventId": eventId,
          "userId": sharedPreferences.getString(CacheConstants.CACHED_USER_ID),
          "eventDatesId": eventDates.getTrueKeys(),
        },
      );

      final authResponse = response.data;
      return Booking.fromJson(authResponse);
    } on DioError catch (e) {
      throw ServerError();
    }
  }

  @override
  Future<List<Booking>> myEventBookings(int eventId) async{
    try {
      final response = await dioClient.dio.get(
        ApiConstants.BOOKING,
        queryParameters: {
          "eventId": eventId,
          "userId": sharedPreferences.getString(CacheConstants.CACHED_USER_ID),
        },
      );

      final bookings = response.data;
      return (bookings as List).map((booking) => Booking.fromJson(booking)).toList();
    } on DioError catch (e) {
      throw ServerError();
    }
  }
}
