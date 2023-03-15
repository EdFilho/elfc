import '../../../../../../core/cache/cache.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/configs/app_routes.dart';

class ProfileController extends GetxController {
  void toSettings() {
    Get.toNamed(Routes.editProfile);
  }

  Future<void> changeThemeMode() async {
    if (Get.isDarkMode) {
      await CacheAdapter().writeStorage(CacheString.themeModeKey, "light");
      Get.changeThemeMode(ThemeMode.light);
    } else {
      await CacheAdapter().writeStorage(CacheString.themeModeKey, "dark");
      Get.changeThemeMode(ThemeMode.dark);
    }
  }
}
