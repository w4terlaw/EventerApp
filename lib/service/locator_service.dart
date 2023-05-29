import 'package:eventer_app/feature/auth/domain/use_cases/user_registration.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/platform/network_info.dart';
import '../feature/auth/data/data_sources/auth_remote_datasource.dart';
import '../feature/auth/data/repositories/auth_repository_impl.dart';
import '../feature/auth/domain/repositories/auth_repository.dart';
import '../feature/auth/domain/use_cases/user_login.dart';
import '../feature/events/data/data_sources/event_booking_remote_datasource.dart';
import '../feature/events/data/data_sources/event_donation_remote_datasource.dart';
import '../feature/events/data/repositories/event_booking_repository_impl.dart';
import '../feature/events/data/repositories/event_donation_repository_impl.dart';
import '../feature/events/domain/repositories/event_booking_repository.dart';
import '../feature/events/domain/repositories/event_donation_repository.dart';
import '../feature/events/domain/use_cases/create_event_booking.dart';
import '../feature/events/domain/use_cases/deleteBooking.dart';
import '../feature/events/domain/use_cases/makeDonation.dart';
import '../feature/events/domain/use_cases/user_bookings.dart';
import '../feature/events/domain/use_cases/user_bookings_by_event.dart';
import '../feature/organizer/data/data_sources/organizer_remote_datasource.dart';
import '../feature/organizer/data/repositories/organizer_repository_impl.dart';
import '../feature/organizer/domain/repositories/organizer_repository.dart';
import '../feature/organizer/domain/use_cases/get_organizer.dart';
import '../feature/organizer/domain/use_cases/get_organizer_events.dart';
import '../feature/organizer/domain/use_cases/get_organizer_feedbacks.dart';
import '../feature/organizer/domain/use_cases/get_organizer_other_info.dart';
import '../feature/user/data/data_sources/events_remote_datasource.dart';
import '../feature/user/data/data_sources/favorite_organizer_remote_datasource.dart';
import '../feature/user/data/data_sources/user_remote_datasource.dart';
import '../feature/user/data/repositories/events_repository_impl.dart';
import '../feature/user/data/repositories/favorite_organizer_repository_impl.dart';
import '../feature/user/data/repositories/user_repository_impl.dart';
import '../feature/user/domain/repositories/events_repository.dart';
import '../feature/user/domain/repositories/favorite_organizer_repository.dart';
import '../feature/user/domain/repositories/user_repository.dart';
import '../feature/user/domain/use_cases/get_event.dart';
import '../feature/user/domain/use_cases/get_list_events.dart';
import '../feature/user/domain/use_cases/get_user_favorite_organizers.dart';
import '../feature/user/domain/use_cases/get_user_info.dart';
import 'dio/dio_client.dart';
import 'dio/jwt_dio_client.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //  USE CASES
  sl.registerLazySingleton<UserLogin>(() => UserLogin(sl<AuthRepository>()));
  sl.registerLazySingleton<UserRegistration>(
      () => UserRegistration(sl<AuthRepository>()));

  sl.registerLazySingleton<GetEvent>(() => GetEvent(sl<EventsRepository>()));
  sl.registerLazySingleton<GetListEvents>(
      () => GetListEvents(sl<EventsRepository>()));

  sl.registerLazySingleton<GetOrganizer>(
      () => GetOrganizer(sl<OrganizerRepository>()));
  sl.registerLazySingleton<GetOrganizerOtherInfo>(
      () => GetOrganizerOtherInfo(sl<OrganizerRepository>()));
  sl.registerLazySingleton<GetOrganizerFeedbacks>(
      () => GetOrganizerFeedbacks(sl<OrganizerRepository>()));
  sl.registerLazySingleton<GetOrganizerEvents>(
      () => GetOrganizerEvents(sl<OrganizerRepository>()));

  sl.registerLazySingleton<CreateEventBooking>(
      () => CreateEventBooking(sl<EventBookingRepository>()));
  sl.registerLazySingleton<DeleteBooking>(
      () => DeleteBooking(sl<EventBookingRepository>()));
  sl.registerLazySingleton<UserBookingsByEvent>(
      () => UserBookingsByEvent(sl<EventBookingRepository>()));
  sl.registerLazySingleton<UserBookings>(
      () => UserBookings(sl<EventBookingRepository>()));

  sl.registerLazySingleton<MakeDonation>(
      () => MakeDonation(sl<EventDonationRepository>()));

  sl.registerLazySingleton<GetUserInfo>(
      () => GetUserInfo(sl<UserRepository>()));

  sl.registerLazySingleton<GetUserFavoriteOrganizers>(
      () => GetUserFavoriteOrganizers(sl<FavoriteOrganizerRepository>()));

  //  REPOSITORY
  sl.registerLazySingleton<EventsRepository>(() => EventsRepositoryImpl(
      eventsRemoteDataSource: sl(), networkInfo: sl<NetworkInfo>()));
  sl.registerLazySingleton<EventsRemoteDataSource>(() =>
      EventsRemoteDataSourceImpl(dioClient: sl(), sharedPreferences: sl()));

  sl.registerLazySingleton<AuthRepository>(() => AuthLoginRepositoryIml(
      authRemoteDataSource: sl(), networkInfo: sl<NetworkInfo>()));
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(dioClient: sl(), sharedPreferences: sl()));

  sl.registerLazySingleton<EventBookingRepository>(() =>
      EventBookingRepositoryImpl(
          eventBookingRemoteDataSource: sl(), networkInfo: sl<NetworkInfo>()));
  sl.registerLazySingleton<EventBookingRemoteDataSource>(() =>
      EventBookingRemoteDataSourceImpl(
          dioClient: sl(), sharedPreferences: sl()));

  sl.registerLazySingleton<OrganizerRepository>(() => OrganizerRepositoryImpl(
      organizerRemoteDataSource: sl(), networkInfo: sl<NetworkInfo>()));
  sl.registerLazySingleton<OrganizerRemoteDataSource>(() =>
      OrganizerRemoteDataSourceImpl(
          dioClient: sl<DioClient>(),
          sharedPreferences: sl<SharedPreferences>()));

  sl.registerLazySingleton<EventDonationRepository>(() =>
      EventDonationRepositoryImpl(
          eventDonationRepository: sl<EventDonationRemoteDataSource>(),
          networkInfo: sl<NetworkInfo>()));
  sl.registerLazySingleton<EventDonationRemoteDataSource>(() =>
      EventDonationRemoteDataSourceImpl(
          dioClient: sl<DioClient>(),
          sharedPreferences: sl<SharedPreferences>()));

  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(
      userRemoteDataSource: sl<UserRemoteDataSource>(),
      networkInfo: sl<NetworkInfo>()));
  sl.registerLazySingleton<UserRemoteDataSource>(() => UserRemoteDataSourceImpl(
      dioClient: sl<DioClient>(), sharedPreferences: sl<SharedPreferences>()));

  sl.registerLazySingleton<FavoriteOrganizerRepository>(() =>
      FavoriteOrganizerRepositoryImpl(
          favoriteOrganizerRemoteDataSource:
              sl<FavoriteOrganizerRemoteDataSource>(),
          networkInfo: sl<NetworkInfo>()));
  sl.registerLazySingleton<FavoriteOrganizerRemoteDataSource>(() =>
      FavoriteOrganizerRemoteDataSourceImpl(
          dioClient: sl<DioClient>(),
          sharedPreferences: sl<SharedPreferences>()));
  // CORE
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoIml(sl<InternetConnectionChecker>()));

  //  EXTERNAL
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  sl.registerLazySingleton<DioClient>(() => DioClient());
  sl.registerLazySingleton<JwtDioClient>(() => JwtDioClient());
  sl.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
}
