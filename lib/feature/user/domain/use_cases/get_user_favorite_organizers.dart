import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/favorite_organizer/favorite_organizer.dart';
import '../repositories/favorite_organizer_repository.dart';

class GetUserFavoriteOrganizers
    extends UseCaseNoAttributes<List<FavoriteOrganizer>> {
  final FavoriteOrganizerRepository favoriteOrganizerRepository;

  GetUserFavoriteOrganizers(this.favoriteOrganizerRepository);

  @override
  Future<Either<Failure, List<FavoriteOrganizer>>> call() async {
    return await favoriteOrganizerRepository.getFavorites();
  }
}
