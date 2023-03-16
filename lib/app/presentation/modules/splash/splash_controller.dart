import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../data/infra/cache/cache_adapter.dart';
import '../../app_routes.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await verifyCache();
    super.onInit();
  }

  Future<void> verifyCache() async {
    Future.delayed(const Duration(seconds: 3)).then((_) async {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
      ThemeMode themeMode = await CacheAdapter().getTheme();
      Get.offAndToNamed(Routes.onboarding);
      Get.changeThemeMode(themeMode);
    });
  }
}
