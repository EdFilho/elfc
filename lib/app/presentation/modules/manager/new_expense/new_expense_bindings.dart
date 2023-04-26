import 'package:get/get.dart';
import './new_expense_controller.dart';

class NewExpenseBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(NewExpenseController());
    }
}