import 'package:dartz/dartz.dart';
import 'package:eventer_app/feature/events/data/models/event_donation/event_donation.dart';

import '../../../../core/error/failure.dart';

abstract class EventDonationRepository {
  Future<Either<Failure, EventDonation>> makeDonation(
      int eventId, double amount);
}
