import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '/core/error/failure.dart';
import '/core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

class UserRegistration extends UseCase<bool, UserRegistrationParams> {
  final AuthRepository authLoginRepository;

  UserRegistration(this.authLoginRepository);

  @override
  Future<Either<Failure, bool>> call(UserRegistrationParams params) async {
    return await authLoginRepository.userRegistration(
        params.firstName, params.lastName, params.email, params.password);
  }
}

class UserRegistrationParams extends Equatable {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  const UserRegistrationParams({
    required this.lastName,
    required this.firstName,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [lastName, firstName, email, password];
}
