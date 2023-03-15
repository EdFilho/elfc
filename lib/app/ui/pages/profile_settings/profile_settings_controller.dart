import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/cache/cache_adapter.dart';
import '../../../core/cache/cache_string.dart';

class ProfileSettingsController extends GetxController {
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
