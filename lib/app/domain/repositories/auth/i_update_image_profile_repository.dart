import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../helpers/failures.dart';

abstract class IUpdateImageProfileRepository {
  Future<Either<Failure, bool>> update(File imageProfile);
}
