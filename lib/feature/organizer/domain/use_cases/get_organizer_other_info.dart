import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:eventer_app/feature/organizer/domain/repositories/organizer_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/organizer_info/organizer_info.dart';

class GetOrganizerOtherInfo
    extends UseCase<OrganizerInfo, OrganizerOtherInfoParams> {
  final OrganizerRepository organizerRepository;

  GetOrganizerOtherInfo(this.organizerRepository);

  @override
  Future<Either<Failure, OrganizerInfo>> call(
      OrganizerOtherInfoParams params) async {
    return await organizerRepository.getOrganizerOtherInfo(
      params.organizerId,
      params.toggleSubscribe,
    );
  }
}

class OrganizerOtherInfoParams extends Equatable {
  final int organizerId;
  final bool toggleSubscribe;

  const OrganizerOtherInfoParams({
    required this.organizerId,
    required this.toggleSubscribe,
  });

  @override
  List<Object?> get props => [organizerId, toggleSubscribe];
}
