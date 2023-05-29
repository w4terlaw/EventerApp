import 'dart:async';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../common/constants.dart';
import '../../../../core/error/exception.dart';
import '../../../../service/dio/dio_client.dart';
import '../models/booking/booking.dart';
import '../models/event_dates_checkbox.dart';

abstract class EventBookingRemoteDataSource {
  Future<Booking> makeEventBooking(int eventId, EventDatesCheckbox eventDates);

  Future<List<Booking>> myBookings(int eventId);

  Future<bool> deleteBooking(int bookingId);

  Future<List<Booking>> userBookings();
}

class EventBookingRemoteDataSourceImpl implements EventBookingRemoteDataSource {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  EventBookingRemoteDataSourceImpl({
    required this.dioClient,
    required this.sharedPreferences,
  });

  @override
  Future<Booking> makeEventBooking(
      int eventId, EventDatesCheckbox eventDates) async {
    try {
      final response = await dioClient.dio.post(
        ApiConstants.BOOKING,
        data: {
          "eventId": eventId,
          "userId": sharedPreferences.getString(CacheConstants.CACHED_USER_ID),
          "ticket": {
            "ticketType": "FREE",
            "seat": 0,
            "eventDatesId": eventDates.getTrueKeys()[0],
          }
        },
      );

      final authResponse = response.data;
      return Booking.fromJson(authResponse);
    } on DioError catch (e) {
      throw ServerError();
    }
  }

  @override
  Future<List<Booking>> myBookings(int eventId) async {
    try {
      final response = await dioClient.dio.get(
        ApiConstants.BOOKING,
        queryParameters: {
          "eventId": eventId,
          "userId": sharedPreferences.getString(CacheConstants.CACHED_USER_ID),
        },
      );

      final bookings = response.data;
      return (bookings as List)
          .map((booking) => Booking.fromJson(booking))
          .toList();
    } on DioError catch (e) {
      throw ServerError();
    }
  }

  @override
  Future<bool> deleteBooking(int bookingId) async {
    try {
      await dioClient.dio.delete(
        '${ApiConstants.BOOKING}/$bookingId',
      );
      return true;
    } on DioError catch (e) {
      throw ServerError();
    }
  }

  @override
  Future<List<Booking>> userBookings() async {
    try {
      final response = await dioClient.dio.get(
        ApiConstants.BOOKING,
        queryParameters: {
          "userId": sharedPreferences.getString(CacheConstants.CACHED_USER_ID),
        },
      );

      final bookings = response.data;
      return (bookings as List)
          .map((booking) => Booking.fromJson(booking))
          .toList();
    } on DioError catch (e) {
      throw ServerError();
    }
  }
}
