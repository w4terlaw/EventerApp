import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_sources/user_remote_datasource.dart';
import '../models/user/user.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource userRemoteDataSource;
  final NetworkInfo networkInfo;

  UserRepositoryImpl({
    required this.userRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, User>> getInfo() async {
    return await _eventDonation(() {
      return userRemoteDataSource.getInfo();
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
