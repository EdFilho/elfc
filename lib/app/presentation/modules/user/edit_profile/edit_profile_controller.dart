import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> lastNameController = TextEditingController().obs;
  Rx<TextEditingController> birthdayDate = TextEditingController().obs;
  Rx<DateTime> birthDay = DateTime.now().obs;
  RxList<String> genders = ['masc', 'fem'].obs;
  Rx<String> selectedGender = 'masc'.obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: birthDay.value,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != birthDay.value) {
      birthDay.value = picked;
    }
  }

  void selectGender(String? value) {
    selectedGender.value = value ?? selectedGender.value;
  }
}
