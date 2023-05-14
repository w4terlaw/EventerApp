import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/booking.dart';


abstract class EventBookingRepository {
  Future<Either<Failure, Booking>> eventBooking(int eventId);
}