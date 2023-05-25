import 'package:dartz/dartz.dart';
import 'package:eventer_app/feature/organizer/data/data_sources/organizer_remote_datasource.dart';
import 'package:eventer_app/feature/organizer/data/models/feedback/feedback.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/organizer_repository.dart';
import '../models/event/event.dart';
import '../models/organizer/organizer.dart';
import '../models/organizer_info/organizer_info.dart';

class OrganizerRepositoryImpl implements OrganizerRepository {
  final OrganizerRemoteDataSource organizerRemoteDataSource;
  final NetworkInfo networkInfo;

  OrganizerRepositoryImpl({
    required this.organizerRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Organizer>> getOrganizer(int organizerId) async {
    return await _getRemoteData(() {
      return organizerRemoteDataSource.getOrganizer(organizerId);
    });
  }

  @override
  Future<Either<Failure, OrganizerInfo>> getOrganizerOtherInfo(
      int organizerId, bool toggleSubscribe) async {
    return await _getRemoteData(() {
      return organizerRemoteDataSource.getOrganizerOtherInfo(organizerId, toggleSubscribe);
    });
  }

  @override
  Future<Either<Failure, List<Event>>> getOrganizerEvents(
      int page, int organizerId) async {
    return await _getRemoteData(() {
      return organizerRemoteDataSource.getOrganizerEvents(page, organizerId);
    });
  }

  @override
  Future<Either<Failure, List<Feedback>>> getOrganizerFeedbacks(
      int organizerId) async {
    return await _getRemoteData(() {
      return organizerRemoteDataSource.getOrganizerFeedbacks(organizerId);
    });
  }

  Future<Either<Failure, T>> _getRemoteData<T>(
      Future<T> Function() getEvent) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await getEvent();
        return Right(remoteData);
      } on ServerError {
        return Left(ServerFailure());
      }
    } else {
      return Left(SocketFailure());
    }
  }
}
