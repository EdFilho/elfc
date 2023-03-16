import 'package:get/get.dart';
import './profile_settings_controller.dart';

class ProfileSettingsBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ProfileSettingsController());
    }
}