import 'package:get/get.dart';
import './support_controller.dart';

class SupportBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SupportController());
    }
}