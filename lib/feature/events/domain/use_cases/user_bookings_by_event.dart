import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:eventer_app/feature/events/data/models/booking/booking.dart';
import 'package:eventer_app/feature/events/domain/repositories/event_booking_repository.dart';

import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class UserBookingsByEvent extends UseCase<List<Booking>, EventBookingParams> {
  final EventBookingRepository eventBookingRepository;

  UserBookingsByEvent(this.eventBookingRepository);

  @override
  Future<Either<Failure, List<Booking>>> call(EventBookingParams params) async {
    return await eventBookingRepository.userBookingsByEvent(params.eventId);
  }
}

class EventBookingParams extends Equatable {
  final int eventId;

  const EventBookingParams({required this.eventId});

  @override
  List<Object?> get props => [eventId];
}
