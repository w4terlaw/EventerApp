import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/auth.dart';


abstract class AuthRepository {
  Future<Either<Failure, Auth>> userLogin(String email, String password);
}