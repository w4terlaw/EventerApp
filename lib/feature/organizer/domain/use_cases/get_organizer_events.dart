import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:eventer_app/feature/organizer/domain/repositories/organizer_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/event/event.dart';

class GetOrganizerEvents extends UseCase<List<Event>, OrganizerEvents> {
  final OrganizerRepository organizerRepository;

  GetOrganizerEvents(this.organizerRepository);

  @override
  Future<Either<Failure, List<Event>>> call(OrganizerEvents params) async {
    return await organizerRepository.getOrganizerEvents(
        params.page, params.organizerId);
  }
}

class OrganizerEvents extends Equatable {
  final int page;
  final int organizerId;

  const OrganizerEvents({
    required this.page,
    required this.organizerId,
  });

  @override
  List<Object?> get props => [page, organizerId];
}
