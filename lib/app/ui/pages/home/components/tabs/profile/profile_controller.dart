import 'package:elfc/app/core/cache/cache.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
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
