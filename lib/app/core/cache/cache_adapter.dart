import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'cache_string.dart';

class CacheAdapter {
  FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> writeStorage(String key, dynamic value) async {
    await storage.write(key: key, value: value);
  }

  dynamic read(String key) async {
    dynamic string = await storage.read(key: key);
    return string;
  }

  Future<void> delete(String key) async {
    await storage.delete(key: key);
  }

  Future<void> clear() async {
    await storage.deleteAll();
  }

  Future<ThemeMode> getTheme() async {
    String? theme = await read(CacheString.themeModeKey);
    print('theme mode => $theme');
    switch (theme) {
      case "dark":
        return ThemeMode.dark;
      case "light":
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }
}
