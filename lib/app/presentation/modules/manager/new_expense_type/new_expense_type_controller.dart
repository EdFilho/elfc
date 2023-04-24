import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewExpenseTypeController extends GetxController {
  Rx<TextEditingController> expenseTypeTitle = TextEditingController().obs;
  Rx<TextEditingController> expenseTypeDescription = TextEditingController().obs;
}
