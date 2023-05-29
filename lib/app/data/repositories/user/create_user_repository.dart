import 'package:dartz/dartz.dart';

import '../../../../core/shared/constants/constants.dart';
import '../../../domain/helpers/failures.dart';
import '../../../domain/repositories/repositories.dart';
import '../../infra/http/http.dart';
import '../../models/models.dart';

class CreateUserRepository implements ICreateUserRepository {
  final IHttpClient httpClient;

  CreateUserRepository({
    required this.httpClient,
  });

  @override
  Future<Either<Failure, bool>> register(CreateUserModel createUserParams) async {
    Map<String, String> header = {
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    try {
      await httpClient.request(
        method: 'post',
        endpoint: Api.users,
        body: createUserParams.toJson(),
        headers: header,
      );
      return const Right(true);
    } on HttpError catch (e) {
      switch (e) {
        case HttpError.notFound:
          return const Left(
            NotFoundFailure(
              message: 'Houve um erro. Tente novamente',
            ),
          );
        case HttpError.unauthorized:
          return const Left(
            UnauthorizedFailure(
              message: 'Email já cadastrado.',
            ),
          );
        default:
          return const Left(
            ServerFailure(
              message: 'Falha na comunição com o servidor. Tente novamente',
            ),
          );
      }
    }
  }
}
