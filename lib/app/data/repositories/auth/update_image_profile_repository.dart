import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/shared/constants/constants.dart';
import '../../../domain/helpers/failures.dart';
import '../../../domain/repositories/repositories.dart';
import '../../infra/http/http.dart';

class UpdateImageProfileRepository implements IUpdateImageProfileRepository {
  final IHttpClient httpClient;

  UpdateImageProfileRepository({
    required this.httpClient,
  });

  @override
  Future<Either<Failure, bool>> update(File imageProfile) async {
    Map<String, String> header = {
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    Map<String, dynamic> body = {
      "image": imageProfile,
    };
    try {
      await httpClient.request(
        method: 'post',
        endpoint: Api.imageProfile,
        body: body,
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
