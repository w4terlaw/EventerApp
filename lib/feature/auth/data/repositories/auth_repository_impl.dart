import 'package:dartz/dartz.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/core/platform/network_info.dart';
import 'package:eventer_app/feature/auth/domain/repositories/auth_repository.dart';

import '../data_sources/auth_remote_datasource.dart';
import '../models/auth.dart';

class AuthLoginRepositoryIml implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final NetworkInfo networkInfo;

  AuthLoginRepositoryIml({
    required this.authRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Auth>> userLogin(String email, String password) async {
    return await _userAuth(() {
      return authRemoteDataSource.userLogin(email, password);
    });
  }

  Future<Either<Failure, Auth>> _userAuth(
      Future<Auth> Function() authLogin) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteAuthLogin = await authLogin();
        return Right(remoteAuthLogin);
        // } on NotFoundError {
        //   return Left(NotFoundFailure());
        // } on UnauthorizedError {
        //   return Left(UnauthorizedFailure());
      } on ServerError {
        return Left(ServerFailure());
        // } on NetworkError {
        //   return Left(NetworkFailure());
      } on EmailAndPassError {
        return Left(EmailAndPassFailure());
      }
    } else {
      return Left(SocketFailure());
    }
  }
}
