import 'package:dartz/dartz.dart';

import '../../entities/entities.dart';
import '../../helpers/failures.dart';

abstract class ILoginRepository {
  Future<Either<Failure, AccountEntity>> login(
    String email,
    String password,
  );
}
