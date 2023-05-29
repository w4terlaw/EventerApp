import 'package:dartz/dartz.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/feature/organizer/data/models/feedback/feedback.dart';

import '../../data/models/event/event.dart';
import '../../data/models/organizer/organizer.dart';
import '../../data/models/organizer_info/organizer_info.dart';

abstract class OrganizerRepository {
  Future<Either<Failure, Organizer>> getOrganizer(int organizerId);

  Future<Either<Failure, OrganizerInfo>> getOrganizerOtherInfo(
      int organizerId, bool toggleSubscribe);

  Future<Either<Failure, List<Event>>> getOrganizerEvents(
      int page, int organizerId);

  Future<Either<Failure, List<Feedback>>> getOrganizerFeedbacks(
      int organizerId);
}
