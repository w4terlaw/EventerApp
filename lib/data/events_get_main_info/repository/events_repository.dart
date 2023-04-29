import 'package:dartz/dartz.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/core/platform/network_info.dart';
import 'package:eventer_app/data/events_get_main_info/data_sources/events_remote_data_source.dart';
import 'package:eventer_app/data/events_get_main_info/models/event.dart';

abstract class EventsRepository {
  Future<Either<Failure, List<Event>>> getEvents(int page, String name);
}

class EventsRepositoryImpl implements EventsRepository {
  final EventsRemoteDataSource eventsRemoteDataSource;
  final NetworkInfo networkInfo;

  EventsRepositoryImpl({
    required this.eventsRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Event>>> getEvents(int page, String name) async {
    return await _getEvents(() {
      return eventsRemoteDataSource.getEvents(page, name);
    });
  }

  Future<Either<Failure, List<Event>>> _getEvents(
      Future<List<Event>> Function() getEvents) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteEvents = await getEvents();
        return Right(remoteEvents);
      } on ServerException {
        return Left(ServerFailure());
      } on UnauthorizedException {

        return Left(UnauthorizedFailure());
      }
    } else {
      return Left(SocketFailure());
    }
  }
}
