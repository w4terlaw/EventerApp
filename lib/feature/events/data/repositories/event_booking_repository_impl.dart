import 'package:dartz/dartz.dart';
import 'package:eventer_app/feature/events/data/data_sources/event_booking_remote_datasource.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/event_booking_repository.dart';
import '../models/booking/booking.dart';
import '../models/event_dates_checkbox.dart';

class EventBookingRepositoryImpl implements EventBookingRepository {
  final EventBookingRemoteDataSource eventBookingRemoteDataSource;
  final NetworkInfo networkInfo;

  EventBookingRepositoryImpl({
    required this.eventBookingRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Booking>> createEventBooking(
      int eventId, EventDatesCheckbox eventDates) async {
    return await _eventBooking(() {
      return eventBookingRemoteDataSource.makeEventBooking(eventId, eventDates);
    });
  }

  @override
  Future<Either<Failure, List<Booking>>> userBookingsByEvent(
      int eventId) async {
    return await _eventBooking(() {
      return eventBookingRemoteDataSource.myBookings(eventId);
    });
  }

  @override
  Future<Either<Failure, bool>> deleteBooking(int bookingId) async {
    return await _eventBooking(() {
      return eventBookingRemoteDataSource.deleteBooking(bookingId);
    });
  }

  @override
  Future<Either<Failure, List<Booking>>> userBookings() async {
    return await _eventBooking(() {
      return eventBookingRemoteDataSource.userBookings();
    });
  }

  Future<Either<Failure, T>> _eventBooking<T>(
      Future<T> Function() remoteEventBooking) async {
    if (await networkInfo.isConnected) {
      try {
        final eventBooking = await remoteEventBooking();
        return Right(eventBooking);
      } on ServerError {
        return Left(ServerFailure());
      }
    } else {
      return Left(SocketFailure());
    }
  }
}
