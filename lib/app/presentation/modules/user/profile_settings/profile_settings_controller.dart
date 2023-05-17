import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/infra/cache/cache.dart';
import '../../../app_routes.dart';
import '../../../components/components.dart';

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

  Future<void> logout() async {
    bool? logout = await CustomModal.logout();
    if (logout != null) {
      if (logout) {
        CacheAdapter().delete(CacheString.authTokenKey);
        CacheAdapter().delete(CacheString.userKey);
        Get.offAllNamed(Routes.initial);
      }
    }
  }
}
