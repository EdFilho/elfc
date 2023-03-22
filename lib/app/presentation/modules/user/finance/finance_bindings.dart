import 'package:get/get.dart';
import './finance_controller.dart';

class FinanceBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(FinanceController());
    }
}