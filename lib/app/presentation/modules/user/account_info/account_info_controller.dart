import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInfoController extends GetxController {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> contactController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  RxBool passwordIsVisible = false.obs;
}
