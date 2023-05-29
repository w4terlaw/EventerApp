import 'package:dartz/dartz.dart';
import 'package:eventer_app/feature/events/data/models/booking/booking.dart';
import 'package:eventer_app/feature/events/domain/repositories/event_booking_repository.dart';

import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class UserBookings extends UseCaseNoAttributes<List<Booking>> {
  final EventBookingRepository eventBookingRepository;

  UserBookings(this.eventBookingRepository);

  @override
  Future<Either<Failure, List<Booking>>> call() async {
    return await eventBookingRepository.userBookings();
  }
}
