import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';
import '../../data/models/event/event.dart';
import '../repositories/events_repository.dart';

class GetEvent extends UseCase<Event, PageEventParams> {
  final EventsRepository eventsRepositoryInterface;

  GetEvent(this.eventsRepositoryInterface);

  @override
  Future<Either<Failure, Event>> call(PageEventParams params) async {
    return await eventsRepositoryInterface.getEvent(
      params.id,
    );
  }
}

class PageEventParams extends Equatable {
  final int id;

  const PageEventParams({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}
