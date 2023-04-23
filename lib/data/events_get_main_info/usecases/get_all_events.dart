import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:eventer_app/data/events_get_main_info/models/event.dart';

import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';
import '../repository/events_repository.dart';

class GetEvents extends UseCase<List<Event>, PageEventParams> {
  final EventsRepository eventsRepositoryInterface;

  GetEvents(this.eventsRepositoryInterface);

  @override
  Future<Either<Failure, List<Event>>> call(PageEventParams params) async {
    return await eventsRepositoryInterface.getEvents(params.page, params.name);
  }
}

class PageEventParams extends Equatable {
  final int page;
  final String name;

  const PageEventParams({
    required this.page,
    required this.name,
  });

  @override
  List<Object?> get props => [page, name];
}