import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:eventer_app/feature/events/domain/repositories/event_booking_repository.dart';

import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class DeleteBooking extends UseCase<bool, DeleteBookingParams> {
  final EventBookingRepository eventBookingRepository;

  DeleteBooking(this.eventBookingRepository);

  @override
  Future<Either<Failure, bool>> call(DeleteBookingParams params) async {
    return await eventBookingRepository.deleteBooking(params.bookingId);
  }
}

class DeleteBookingParams extends Equatable {
  final int bookingId;

  const DeleteBookingParams({required this.bookingId});

  @override
  List<Object?> get props => [bookingId];
}
