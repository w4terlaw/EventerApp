import 'package:eventer_app/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../common/constants.dart';
import '../../../../../../service/locator_service.dart';

void logOut() {
  final SharedPreferences sharedPreferences = sl<SharedPreferences>();
  sharedPreferences.remove(CacheConstants.CACHED_ACCESS_TOKEN);
  sharedPreferences.remove(CacheConstants.CACHED_REFRESH_TOKEN);
  sharedPreferences.remove(CacheConstants.CACHED_ROLE_ID);
  sharedPreferences.remove(CacheConstants.CACHED_USER_ID);
  navigatorKey.currentState!.pushReplacementNamed(MyRouterConstants.loginRoute);
}
