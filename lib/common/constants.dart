// ignore_for_file: constant_identifier_names

class ApiConstants {
  static const String API_URL = 'http://192.168.0.240:5000/api/v1';
  static const String AUTH_EP = '/auth/login';
  static const String USER_EP = '/user';
  static const String EVENTS_EP = '/event';
}

class CacheConstants {
  static const String CACHED_ACCESS_TOKEN = 'CACHED_ACCESS_TOKEN';
  static const String CACHED_USER_ID = 'CACHED_USER_ID';
}
