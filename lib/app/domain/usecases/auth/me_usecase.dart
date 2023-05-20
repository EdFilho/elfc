import '../../../data/repositories/repositories.dart';
import '../../../presentation/components/components.dart';
import '../../entities/entities.dart';
import '../../helpers/failures.dart';

abstract class MeUsecase {
  Future<UserEntity?> call();
}

class IMeUsecase implements MeUsecase {
  final MeRepository repository;

  IMeUsecase({required this.repository});

  @override
  Future<UserEntity?> call() async {
    final result = await repository.fetchMe();
    final extract = result.fold((failure) => failure, (success) => success);
    if (extract is UserEntity) {
      return extract;
    } else {
      Failure error = extract as Failure;
      CustomSnackbar.call(
        title: error.title,
        description: error.message,
      );
      return null;
    }
  }
}
