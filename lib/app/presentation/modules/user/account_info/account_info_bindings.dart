import 'package:get/get.dart';

import 'account_info_controller.dart';

class AccountInfoBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AccountInfoController());
  }
}
