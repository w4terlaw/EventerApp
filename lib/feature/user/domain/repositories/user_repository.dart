import 'package:dartz/dartz.dart';
import 'package:eventer_app/core/error/failure.dart';

import '../../data/models/user/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getInfo();
}
