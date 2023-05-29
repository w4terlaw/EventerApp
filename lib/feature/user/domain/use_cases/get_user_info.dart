import 'package:dartz/dartz.dart';
import 'package:eventer_app/feature/user/domain/repositories/user_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/user/user.dart';

class GetUserInfo extends UseCaseNoAttributes<User> {
  final UserRepository userRepository;

  GetUserInfo(this.userRepository);

  @override
  Future<Either<Failure, User>> call() async {
    return await userRepository.getInfo();
  }
}
