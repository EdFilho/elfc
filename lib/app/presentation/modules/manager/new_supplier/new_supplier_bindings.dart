import 'package:get/get.dart';
import './new_supplier_controller.dart';

class NewSupplierBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(NewSupplierController());
    }
}