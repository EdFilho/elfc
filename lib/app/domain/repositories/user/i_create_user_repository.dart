import 'package:dartz/dartz.dart';

import '../../../data/models/models.dart';
import '../../helpers/failures.dart';

abstract class ICreateUserRepository {
  Future<Either<Failure, bool>> register(
    CreateUserModel createUserParams,
  );
}
