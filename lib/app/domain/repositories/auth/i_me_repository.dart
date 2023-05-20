import 'package:dartz/dartz.dart';

import '../../entities/entities.dart';
import '../../helpers/failures.dart';

abstract class IMeRepository {
  Future<Either<Failure, UserEntity>> fetchMe();
}
