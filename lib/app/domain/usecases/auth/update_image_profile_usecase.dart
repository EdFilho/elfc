import 'dart:io';

import '../../../data/repositories/repositories.dart';
import '../../../presentation/components/components.dart';
import '../../helpers/failures.dart';

abstract class UpdateImageProfileUsecase {
  Future<bool> call(File imageProfile);
}

class IUpdateImageProfileUsecase implements UpdateImageProfileUsecase {
  final UpdateImageProfileRepository repository;

  IUpdateImageProfileUsecase({required this.repository});

  @override
  Future<bool> call(File imageProfile) async {
    final result = await repository.update(imageProfile);
    final extract = result.fold((failure) => failure, (success) => success);
    if (extract is bool) {
      return extract;
    } else {
      Failure error = extract as Failure;
      CustomSnackbar.call(
        title: error.title,
        description: error.message,
      );
      return false;
    }
  }
}
