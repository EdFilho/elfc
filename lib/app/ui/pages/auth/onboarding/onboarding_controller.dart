import 'package:get/get.dart';

import '../../../../core/configs/app_routes.dart';

class OnboardingController extends GetxController {
  void toLogin() {
    Get.toNamed(Routes.login);
  }

  void toRegister() {
    Get.toNamed(Routes.register);
  }
}
