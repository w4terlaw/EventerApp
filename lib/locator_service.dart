import 'package:eventer_app/data/events_get_main_info/datasources/events_remote_data_source.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/platform/network_info.dart';
import 'data/events_get_main_info/repository/events_repository.dart';
import 'data/events_get_main_info/usecases/get_all_events.dart';

final sl = GetIt.instance;

Future<void> init() async {
//  Usecases
  sl.registerLazySingleton(() => GetEvents(sl()));

//  Repository
  sl.registerLazySingleton<EventsRepositoryInterface>(
    () => EventsRepository(
        eventsRemoteDataSourceInterface: sl(), networkInfo: sl()),
  );

  sl.registerLazySingleton<EventsRemoteDataSourceInterface>(
    () => EventsRemoteDataSource(client: sl()),
  );

// Core
  sl.registerLazySingleton<NetworkInfoInterface>(() => NetworkInfo(sl()));

//  External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());

//   final sharedPreferences = await SharedPreferences.getInstance();
//   sl.registerLazySingleton(() => sharedPreferences);
}
