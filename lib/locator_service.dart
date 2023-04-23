import 'package:eventer_app/data/events_get_main_info/repository/events_repository_impl.dart';
import 'package:eventer_app/data/events_get_main_info/data_sources/events_remote_data_source.dart';
import 'package:eventer_app/data/events_get_main_info/data_sources/events_remote_data_source_impl.dart';
import 'package:eventer_app/data/events_get_main_info/repository/events_repository.dart';
import 'package:eventer_app/data/events_get_main_info/usecases/get_all_events.dart';
import 'package:eventer_app/core/platform/network_info.dart';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
//  Usecases
  sl.registerLazySingleton(() => GetEvents(sl()));

//  Repository
  sl.registerLazySingleton<EventsRepository>(
    () => EventsRepositoryImpl(
        eventsRemoteDataSourceInterface: sl(), networkInfo: sl()),
  );

  sl.registerLazySingleton<EventsRemoteDataSource>(
    () => EventsRemoteDataSourceImpl(client: sl()),
  );

// Core
  sl.registerLazySingleton<NetworkInfoInterface>(() => NetworkInfo(sl()));

//  External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());

//   final sharedPreferences = await SharedPreferences.getInstance();
//   sl.registerLazySingleton(() => sharedPreferences);
}
