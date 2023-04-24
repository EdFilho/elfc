import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewSupplierController extends GetxController {
  Rx<TextEditingController> supplierNameController = TextEditingController().obs;
  Rx<TextEditingController> supplierDocController = TextEditingController().obs;
}
