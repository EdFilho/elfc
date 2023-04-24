import 'package:get/get.dart';
import './new_expense_type_controller.dart';

class NewExpenseTypeBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(NewExpenseTypeController());
    }
}