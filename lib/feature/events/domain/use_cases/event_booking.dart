import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:eventer_app/feature/events/data/models/booking.dart';
import 'package:eventer_app/feature/events/domain/repositories/event_booking_repository.dart';

import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class EventBooking extends UseCase<Booking, EventBookingParams> {
  final EventBookingRepository eventBookingRepository;

  EventBooking(this.eventBookingRepository);

  @override
  Future<Either<Failure, Booking>> call(EventBookingParams params) async {
    return await eventBookingRepository.eventBooking(params.eventId);
  }
}

class EventBookingParams extends Equatable {
  final int eventId;

  const EventBookingParams({
    required this.eventId,
  });

  @override
  List<Object?> get props => [eventId];
}
