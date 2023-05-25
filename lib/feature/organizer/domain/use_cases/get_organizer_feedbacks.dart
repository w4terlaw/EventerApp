import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/feedback/feedback.dart';
import '../repositories/organizer_repository.dart';

class GetOrganizerFeedbacks
    extends UseCase<List<Feedback>, OrganizerFeedbacks> {
  final OrganizerRepository organizerRepository;

  GetOrganizerFeedbacks(this.organizerRepository);

  @override
  Future<Either<Failure, List<Feedback>>> call(
      OrganizerFeedbacks params) async {
    return await organizerRepository.getOrganizerFeedbacks(params.organizerId);
  }
}

class OrganizerFeedbacks extends Equatable {
  final int organizerId;

  const OrganizerFeedbacks({
    required this.organizerId,
  });

  @override
  List<Object?> get props => [organizerId];
}
