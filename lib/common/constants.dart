// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class ApiConstants {
  static const String API_URL = 'http://77.222.43.213:5000/api/v1/';
  static const String AUTH_LOGIN = '/auth/login';
  static const String AUTH_REFRESH_TOKEN = '/auth/refresh_token';
  static const String USER = '/user/';
  static const String BOOKING = '/booking/';
  static const String EVENT = '/event/';
  static const String ORGANIZER = '/organizer/';
  static const String ORGANIZER_INFO = '/organizer/info/';
  static const String FEEDBACK = '/feedback/';
  static const String EVENT_DONATION = '/event_donation/';
}

class CacheConstants {
  static const String CACHED_ACCESS_TOKEN = 'CACHED_ACCESS_TOKEN';
  static const String CACHED_REFRESH_TOKEN = 'CACHED_REFRESH_TOKEN';
  static const String CACHED_USER_ID = 'CACHED_USER_ID';
  static const String CACHED_ROLE_ID = 'CACHED_ROLE_ID';
}

class MyPadding {
  static const double defaultPadding = 24.0;
  static const LR_24 =
      EdgeInsets.only(left: defaultPadding, right: defaultPadding);
  static const LRTB_24 = EdgeInsets.only(
    left: defaultPadding,
    right: defaultPadding,
    top: defaultPadding,
    bottom: defaultPadding,
  );

  static EdgeInsets padding(
      {double? left, double? right, double top = 0, double bottom = 0}) {
    return EdgeInsets.only(
      left: left ?? defaultPadding,
      right: right ?? defaultPadding,
      top: top,
      bottom: bottom,
      // right: right ?? defaultPadding,
    );
  }
}

class MyRouterConstants {
  static const String loginRoute = '/login';
  static const String homeRoute = '/home';
  static const String registrationRoute = '/registration';
  static const String resetPasswordRoute = '/reset_password';
  static const String searchRoute = '/search';
  static const String eventDetailsRoute = '/event_details';
  static const String organizerRoute = '/organizer';
}
