import 'package:elfc/app/presentation/modules/auth/register/components/steps/personal_data.dart';
import 'package:elfc/app/presentation/modules/auth/register/components/steps/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/steps/email_and_password.dart';

class RegisterController extends GetxController {
  RxInt indexScreen = 0.obs;

  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> birthdayDate = TextEditingController().obs;
  Rx<DateTime> birthDay = DateTime.now().obs;
  RxList<String> genders = ['masc', 'fem'].obs;
  Rx<String> selectedGender = 'masc'.obs;

  RxList<Widget> steps = [
    const EmailAndPassword(),
    const PersonalData(),
    const ProfileImage(),
  ].obs;

  void setScreen(int index) {
    indexScreen.value = index;
  }

  void selectGender(String? value) {
    selectedGender.value = value ?? selectedGender.value;
  }

  void register() {
    setScreen(1);
  }

  void saveUserData() {
    setScreen(2);
  }

  void back() {
    if (indexScreen.value == 0) {
      Get.back();
    } else {
      setScreen(indexScreen.value - 1);
    }
  }

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
}
