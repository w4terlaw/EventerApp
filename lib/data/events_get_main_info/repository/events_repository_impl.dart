import 'package:dartz/dartz.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/core/platform/network_info.dart';
import 'package:eventer_app/data/events_get_main_info/data_sources/events_remote_data_source.dart';
import 'package:eventer_app/data/events_get_main_info/models/event.dart';
import 'package:eventer_app/data/events_get_main_info/repository/events_repository.dart';

class EventsRepositoryImpl implements EventsRepository {
  final EventsRemoteDataSource eventsRemoteDataSourceInterface;
  final NetworkInfoInterface networkInfo;

  EventsRepositoryImpl({
    required this.eventsRemoteDataSourceInterface,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Event>>> getEvents(int page, String name) async {
    return await _getEvents(() {
      return eventsRemoteDataSourceInterface.getEvents(page, name);
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
      }
    } else {
      return Left(SocketFailure());
    }
  }
}
