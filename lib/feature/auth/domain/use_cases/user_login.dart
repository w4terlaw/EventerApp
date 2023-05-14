import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/auth.dart';
import '../repositories/auth_repository.dart';
import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';

class UserLogin extends UseCase<Auth, UserLoginParams> {
  final AuthRepository authLoginRepository;

  UserLogin(this.authLoginRepository);

  @override
  Future<Either<Failure, Auth>> call(UserLoginParams params) async {
    return await authLoginRepository.userLogin(params.email, params.password);
  }
}

class UserLoginParams extends Equatable {
  final String email;
  final String password;

  const UserLoginParams({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}