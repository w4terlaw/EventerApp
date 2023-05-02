import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/platform/network_info.dart';
import 'data/get_list_events/events_remote_datasource.dart';
import 'data/get_list_events/events_repository.dart';
import 'data/get_list_events/usecases/get_event.dart';
import 'data/get_list_events/usecases/get_list_events.dart';
import 'data/user_auth/auth_remote_datasource.dart';
import 'data/user_auth/auth_repository.dart';
import 'data/user_auth/usecases/user_login.dart';

final sl = GetIt.instance;

Future<void> init() async {
//  Usecases
  sl.registerLazySingleton(() => GetListEvents(sl()));
  sl.registerLazySingleton(() => GetEvent(sl()));
  sl.registerLazySingleton(() => UserLogin(sl()));

//  Repository
  sl.registerLazySingleton<EventsRepository>(
    () => EventsRepositoryImpl(eventsRemoteDataSource: sl(), networkInfo: sl()),
  );
  sl.registerLazySingleton<EventsRemoteDataSource>(
    () => EventsRemoteDataSourceImpl(client: sl(), sharedPreferences: sl()),
  );

  sl.registerLazySingleton<AuthRepository>(
    () => AuthLoginRepositoryIml(authRemoteDataSource: sl(), networkInfo: sl()),
  );
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(client: sl(), sharedPreferences: sl()),
  );

// Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoIml(sl()));

//  External
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
