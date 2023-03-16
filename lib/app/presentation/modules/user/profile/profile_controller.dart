import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/infra/cache/cache_adapter.dart';
import '../../../../data/infra/cache/cache_string.dart';
import '../../../app_routes.dart';

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
