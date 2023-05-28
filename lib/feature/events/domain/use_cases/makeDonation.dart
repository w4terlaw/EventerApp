import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:eventer_app/feature/events/data/models/event_donation/event_donation.dart';
import 'package:eventer_app/feature/events/domain/repositories/event_donation_repository.dart';

import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class MakeDonation extends UseCase<EventDonation, MakeDonationParams> {
  final EventDonationRepository eventDonationRepository;

  MakeDonation(this.eventDonationRepository);

  @override
  Future<Either<Failure, EventDonation>> call(MakeDonationParams params) async {
    return await eventDonationRepository.makeDonation(
      params.eventId,
      params.amount,
    );
  }
}

class MakeDonationParams extends Equatable {
  final int eventId;
  final double amount;

  const MakeDonationParams({required this.eventId, required this.amount});

  @override
  List<Object?> get props => [eventId, amount];
}
