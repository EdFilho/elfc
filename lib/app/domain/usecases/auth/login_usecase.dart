import '../../../data/repositories/repositories.dart';
import '../../../presentation/components/components.dart';
import '../../entities/entities.dart';
import '../../helpers/failures.dart';

abstract class LoginUsecase {
  Future<AccountEntity?> call(
    String email,
    String password,
  );
}

class ILoginUsecase implements LoginUsecase {
  final LoginRepository repository;

  ILoginUsecase({required this.repository});

  @override
  Future<AccountEntity?> call(
    String email,
    String password,
  ) async {
    final result = await repository.login(email, password);
    final extract = result.fold((failure) => failure, (success) => success);
    if (extract is AccountEntity) {
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
