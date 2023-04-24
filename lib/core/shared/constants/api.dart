import '../../configs/app_controller.dart';

class Api {
  static const homologUrl = 'http://localhost:3000/api/v1/';
  static const prodUrl = 'http://';
  String baseUrl = AppController.production ? prodUrl : homologUrl;

  // Auth
  static const login = 'auth/login';
}
