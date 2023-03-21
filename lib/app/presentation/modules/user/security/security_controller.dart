import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecurityController extends GetxController {
  Rx<TextEditingController> currentPasswordController = TextEditingController().obs;
  Rx<TextEditingController> newPasswordController = TextEditingController().obs;
  Rx<TextEditingController> confirmPasswordController = TextEditingController().obs;
  RxBool currentPassowrdIsVisible = false.obs;
  RxBool newPasswordIsVisible = false.obs;
  RxBool confirmPasswordIsVisible = false.obs;
}
