import 'package:dartz/dartz.dart';
import 'package:eventer_app/feature/user/data/models/favorite_organizer/favorite_organizer.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/favorite_organizer_repository.dart';
import '../data_sources/favorite_organizer_remote_datasource.dart';

class FavoriteOrganizerRepositoryImpl implements FavoriteOrganizerRepository {
  final FavoriteOrganizerRemoteDataSource favoriteOrganizerRemoteDataSource;
  final NetworkInfo networkInfo;

  FavoriteOrganizerRepositoryImpl({
    required this.favoriteOrganizerRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<FavoriteOrganizer>>> getFavorites() async {
    return await _eventDonation(() {
      return favoriteOrganizerRemoteDataSource.getFavorites();
    });
  }

  Future<Either<Failure, T>> _eventDonation<T>(
      Future<T> Function() remoteEventBooking) async {
    if (await networkInfo.isConnected) {
      try {
        final eventBooking = await remoteEventBooking();
        return Right(eventBooking);
      } on ServerError {
        return Left(ServerFailure());
      }
    } else {
      return Left(SocketFailure());
    }
  }
}
