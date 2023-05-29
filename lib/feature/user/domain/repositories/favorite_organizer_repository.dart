import 'package:dartz/dartz.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/feature/user/data/models/favorite_organizer/favorite_organizer.dart';

abstract class FavoriteOrganizerRepository {
  Future<Either<Failure, List<FavoriteOrganizer>>> getFavorites();
}
