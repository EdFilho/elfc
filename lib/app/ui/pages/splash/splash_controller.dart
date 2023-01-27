import 'package:elfc/app/core/configs/app_routes.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: []);
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await userVerify();
    super.onInit();
  }

  Future<void> userVerify() async {
    Future.delayed(const Duration(seconds: 3)).then((_) async {
      Get.offAndToNamed(Routes.home);
    });
  }
}
