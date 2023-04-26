import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewExpenseController extends GetxController {
  Rx<TextEditingController> expenseTitle = TextEditingController().obs;
  Rx<TextEditingController> expenseSupplier = TextEditingController().obs;
}
