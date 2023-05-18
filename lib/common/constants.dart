// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class ApiConstants {
  static const String API_URL = 'http://77.222.43.213:5000/api/v1/';
  static const String AUTH_LOGIN = '/auth/login';
  static const String AUTH_REFRESH_TOKEN = '/auth/refresh_token';
  static const String USER = '/user/';
  static const String BOOKING = '/booking/';
  static const String EVENT = '/event/';
}

class CacheConstants {
  static const String CACHED_ACCESS_TOKEN = 'CACHED_ACCESS_TOKEN';
  static const String CACHED_REFRESH_TOKEN = 'CACHED_REFRESH_TOKEN';
  static const String CACHED_USER_ID = 'CACHED_USER_ID';
  static const String CACHED_ROLE_ID = 'CACHED_ROLE_ID';
}

class MyPadding {
  static const LR_24 = EdgeInsets.only(left: 24.0, right: 24.0);
  static const LRTB_24 = EdgeInsets.only(left: 24.0, right: 24.0);
}
