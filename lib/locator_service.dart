import 'package:eventer_app/service/dio/dio_client.dart';
import 'package:eventer_app/service/dio/jwt_dio_client.dart';
import 'package:get_it/get_it.dart';
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
  sl.registerLazySingleton<GetListEvents>(() => GetListEvents(sl()));
  sl.registerLazySingleton<GetEvent>(() => GetEvent(sl()));
  sl.registerLazySingleton<UserLogin>(() => UserLogin(sl()));

//  Repository
  sl.registerLazySingleton<EventsRepository>(
    () => EventsRepositoryImpl(eventsRemoteDataSource: sl(), networkInfo: sl()),
  );
  sl.registerLazySingleton<EventsRemoteDataSource>(
    () => EventsRemoteDataSourceImpl(dioClient: sl(), sharedPreferences: sl()),
  );

  sl.registerLazySingleton<AuthRepository>(
    () => AuthLoginRepositoryIml(authRemoteDataSource: sl(), networkInfo: sl()),
  );
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(dioClient: sl(), sharedPreferences: sl()),
  );

// Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoIml(sl()));

//  External
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  // sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton<DioClient>(() => DioClient());
  sl.registerLazySingleton(() => JwtDioClient());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
