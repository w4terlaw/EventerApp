import 'package:dartz/dartz.dart';
import 'package:eventer_app/feature/events/data/data_sources/event_booking_remote_datasource.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/event_booking_repository.dart';
import '../models/booking.dart';

class EventBookingRepositoryImpl implements EventBookingRepository {
  final EventBookingRemoteDataSource eventBookingRemoteDataSource;
  final NetworkInfo networkInfo;

  EventBookingRepositoryImpl({
    required this.eventBookingRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Booking>> eventBooking(int eventId) async {
    return await _eventBooking(() {
      return eventBookingRemoteDataSource.eventBooking(eventId);
    });
  }

  Future<Either<Failure, Booking>> _eventBooking(
      Future<Booking> Function() remoteEventBooking) async {
    if (await networkInfo.isConnected) {
      try {
        final eventBooking = await remoteEventBooking();
        return Right(eventBooking);
      } on ServerError {
        return Left(ServerFailure());
      }
      // on UnauthorizedError {
      //   return Left(UnauthorizedFailure());
      // }
    } else {
      return Left(SocketFailure());
    }
  }
}
