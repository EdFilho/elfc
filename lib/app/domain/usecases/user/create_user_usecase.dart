import '../../../data/models/models.dart';
import '../../../data/repositories/repositories.dart';
import '../../../presentation/components/components.dart';
import '../../helpers/failures.dart';

abstract class CreateUserUsecase {
  Future<bool> call(CreateUserModel createUserParams);
}

class ICreateUserUsecase implements CreateUserUsecase {
  final CreateUserRepository repository;

  ICreateUserUsecase({required this.repository});

  @override
  Future<bool> call(CreateUserModel createUserParams) async {
    final result = await repository.register(createUserParams);
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
