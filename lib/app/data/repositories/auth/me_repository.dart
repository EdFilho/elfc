import 'package:dartz/dartz.dart';

import '../../../../core/shared/constants/constants.dart';
import '../../../domain/entities/user/user_entity.dart';
import '../../../domain/helpers/failures.dart';
import '../../../domain/repositories/repositories.dart';
import '../../infra/cache/cache.dart';
import '../../infra/http/http.dart';
import '../../models/models.dart';

class MeRepository implements IMeRepository {
  final IHttpClient httpClient;

  MeRepository({required this.httpClient});

  @override
  Future<Either<Failure, UserEntity>> fetchMe() async {
    String token = await CacheAdapter().read(CacheString.authTokenKey);

    Map<String, String> header = {
      'content-type': 'application/json',
      'accept': 'application/json',
      "Authorization": "Bearer $token",
    };

    try {
      final httpResponse = await httpClient.request(
        endpoint: Api.me,
        method: 'get',
        headers: header,
      );
      Map<String, dynamic>? profileUser = httpResponse.cast<String, dynamic>();
      final user = UserModel.fromJson(profileUser);
      return Right(user.toEntity());
    } catch (e) {
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
              message: 'Usuário não autorizado. Tente novamente',
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
