import 'package:dartz/dartz.dart';
import 'package:eventer_app/feature/events/data/data_sources/event_donation_remote_datasource.dart';
import 'package:eventer_app/feature/events/data/models/event_donation/event_donation.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/event_donation_repository.dart';

class EventDonationRepositoryImpl implements EventDonationRepository {
  final EventDonationRemoteDataSource eventDonationRepository;
  final NetworkInfo networkInfo;

  EventDonationRepositoryImpl({
    required this.eventDonationRepository,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, EventDonation>> makeDonation(
      int eventId, double amount) async {
    return await _eventDonation(() {
      return eventDonationRepository.makeDonation(eventId, amount);
    });
  }

  Future<Either<Failure, T>> _eventDonation<T>(
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
