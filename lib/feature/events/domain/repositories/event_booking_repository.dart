import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/booking/booking.dart';
import '../../data/models/event_dates_checkbox.dart';


abstract class EventBookingRepository {
  Future<Either<Failure, Booking>> makeEventBooking(int eventId, EventDatesCheckbox eventDates);
  Future<Either<Failure, List<Booking>>> myBookings(int userId);
  Future<Either<Failure, bool>> deleteBooking(int bookingId);
}