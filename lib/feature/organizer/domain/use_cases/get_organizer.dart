import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:eventer_app/feature/organizer/domain/repositories/organizer_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/organizer/organizer.dart';

class GetOrganizer extends UseCase<Organizer, OrganizerParams> {
  final OrganizerRepository organizerRepository;

  GetOrganizer(this.organizerRepository);

  @override
  Future<Either<Failure, Organizer>> call(OrganizerParams params) async {
    return await organizerRepository.getOrganizer(params.organizerId);
  }
}

class OrganizerParams extends Equatable {
  final int organizerId;

  const OrganizerParams({
    required this.organizerId,
  });

  @override
  List<Object?> get props => [organizerId];
}
