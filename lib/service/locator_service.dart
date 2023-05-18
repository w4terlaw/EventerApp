import 'package:eventer_app/feature/events/data/data_sources/event_booking_remote_datasource.dart';
import 'package:eventer_app/feature/events/data/repositories/event_booking_repository_imp.dart';
import 'package:eventer_app/feature/events/domain/repositories/event_booking_repository.dart';
import 'package:eventer_app/feature/events/domain/use_cases/get_my_event_bookings.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/platform/network_info.dart';
import '../feature/auth/data/data_sources/auth_remote_datasource.dart';
import '../feature/auth/data/repositories/auth_repository_impl.dart';
import '../feature/auth/domain/repositories/auth_repository.dart';
import '../feature/auth/domain/use_cases/user_login.dart';
import '../feature/events/domain/use_cases/event_booking.dart';
import '../feature/user/data/data_sources/events_remote_datasource.dart';
import '../feature/user/data/repositories/events_repository_impl.dart';
import '../feature/user/domain/repositories/events_repository.dart';
import '../feature/user/domain/use_cases/get_event.dart';
import '../feature/user/domain/use_cases/get_list_events.dart';
import 'dio/dio_client.dart';
import 'dio/jwt_dio_client.dart';

final sl = GetIt.instance;

Future<void> init() async {
//  Usecases
  sl.registerLazySingleton<GetListEvents>(() => GetListEvents(sl()));
  sl.registerLazySingleton<GetEvent>(() => GetEvent(sl()));
  sl.registerLazySingleton<UserLogin>(() => UserLogin(sl()));
  sl.registerLazySingleton<EventBooking>(() => EventBooking(sl()));
  sl.registerLazySingleton<GetMyEventBookings>(() => GetMyEventBookings(sl()));

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

  sl.registerLazySingleton<EventBookingRepository>(
    () => EventBookingRepositoryImpl(
        eventBookingRemoteDataSource: sl(), networkInfo: sl()),
  );
  sl.registerLazySingleton<EventBookingRemoteDataSource>(
    () => EventBookingRemoteDataSourceImpl(
        dioClient: sl(), sharedPreferences: sl()),
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
