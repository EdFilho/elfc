import 'package:get/get.dart';
import './edit_profile_controller.dart';

class EditProfileBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(EditProfileController());
  }
}
