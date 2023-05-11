import 'package:dartz/dartz.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/core/platform/network_info.dart';

import '../data_sources/events_remote_datasource.dart';
import '../models/event.dart';

abstract class EventsRepository {
  Future<Either<Failure, List<Event>>> getListEvents(int page, String name);

  Future<Either<Failure, Event>> getEvent(int id);
}

class EventsRepositoryImpl implements EventsRepository {
  final EventsRemoteDataSource eventsRemoteDataSource;
  final NetworkInfo networkInfo;

  EventsRepositoryImpl({
    required this.eventsRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Event>>> getListEvents(
      int page, String name) async {
    return await _getEvents(() {
      return eventsRemoteDataSource.getListEvents(page, name);
    });
  }

  @override
  Future<Either<Failure, Event>> getEvent(int id) async {
    return await _getEvent(() {
      return eventsRemoteDataSource.getEvent(id);
    });
  }

  Future<Either<Failure, List<Event>>> _getEvents(
      Future<List<Event>> Function() getEvents) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteEvents = await getEvents();
        return Right(remoteEvents);
      } on ServerError {
        return Left(ServerFailure());
      // } on UnauthorizedError {
      //   return Left(UnauthorizedFailure());
      }
    } else {
      return Left(SocketFailure());
    }
  }

  Future<Either<Failure, Event>> _getEvent(
      Future<Event> Function() getEvent) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteEvent = await getEvent();
        return Right(remoteEvent);
      } on ServerError {
        return Left(ServerFailure());
      } on UnauthorizedError {
        return Left(UnauthorizedFailure());
      }
    } else {
      return Left(SocketFailure());
    }
  }
}
