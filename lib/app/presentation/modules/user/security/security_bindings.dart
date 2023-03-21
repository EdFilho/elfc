import 'package:get/get.dart';
import './security_controller.dart';

class SecurityBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SecurityController());
    }
}