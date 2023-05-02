import 'package:dartz/dartz.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:eventer_app/core/error/exception.dart';
import 'package:eventer_app/core/platform/network_info.dart';
import 'package:eventer_app/data/user_auth/auth_remote_datasource.dart';
import 'package:eventer_app/data/user_auth/models/auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, Auth>> userLogin(String email, String password);
}

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
      } on NotFoundError {
        return Left(NotFoundFailure());
      } on UnauthorizedError {
        return Left(UnauthorizedFailure());
      } on ServerError {
        return Left(ServerFailure());
      } on NetworkError {
        return Left(NetworkFailure());
      }
    } else {
      return Left(SocketFailure());
    }
  }
}
