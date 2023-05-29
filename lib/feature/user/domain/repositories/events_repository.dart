import 'package:dartz/dartz.dart';
import 'package:eventer_app/core/error/failure.dart';

import '../../data/models/event/event.dart';

abstract class EventsRepository {
  Future<Either<Failure, List<Event>>> getListEvents(int page, String name);

  Future<Either<Failure, Event>> getEvent(int id);
}
