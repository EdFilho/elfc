import 'package:dartz/dartz.dart';

import '../../../../core/shared/constants/constants.dart';
import '../../../domain/entities/entities.dart';
import '../../../domain/helpers/failures.dart';
import '../../../domain/repositories/repositories.dart';
import '../../infra/cache/cache.dart';
import '../../infra/http/http.dart';
import '../../models/user/account_model.dart';

class LoginRepository implements ILoginRepository {
  final IHttpClient httpClient;

  LoginRepository({
    required this.httpClient,
  });

  @override
  Future<Either<Failure, AccountEntity>> login(
    String email,
    String password,
  ) async {
    Map<String, String> header = {
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    Map<String, String> body = {"email": email, "password": password};
    try {
      final httpResponse = await httpClient.request(
        method: 'post',
        endpoint: Api.login,
        body: body,
        headers: header,
      );
      Map<String, dynamic>? profileMap = httpResponse['account'].cast<String, dynamic>();
      await CacheAdapter().writeStorage(CacheString.authTokenKey, httpResponse['token']);
      final profile = AccountModel.fromJson(profileMap!);
      return Right(profile.toEntity());
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
              message: 'Usuário ou senha incorretos. Tente novamente',
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
