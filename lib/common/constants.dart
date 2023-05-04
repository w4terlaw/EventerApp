// ignore_for_file: constant_identifier_names

class ApiConstants {
  static const String API_URL = 'http://192.168.0.240:5000/api/v1';
  static const String AUTH_LOGIN = '/auth/login';
  static const String AUTH_REFRESH_TOKEN = '/auth/refresh_token';
  static const String USER = '/user';
  static const String EVENT = '/event';
}

class CacheConstants {
  static const String CACHED_ACCESS_TOKEN = 'CACHED_ACCESS_TOKEN';
  static const String CACHED_REFRESH_TOKEN = 'CACHED_REFRESH_TOKEN';
  static const String CACHED_USER_ID = 'CACHED_USER_ID';
  static const String CACHED_ROLE_ID = 'CACHED_ROLE_ID';
}
