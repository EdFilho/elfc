import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/shared/utilities/helppers.dart';
import '../../../app_routes.dart';
import '../../../components/organisms/select_image_bottom_sheet.dart';
import 'components/steps/steps.dart';

class RegisterController extends GetxController {
  RxInt indexScreen = 0.obs;

  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> lastNameController = TextEditingController().obs;
  Rx<TextEditingController> birthdayDate = TextEditingController().obs;

  Rx<DateTime> birthDay = DateTime.now().obs;
  RxList<String> genders = ['masc', 'fem', 'outro'].obs;
  Rx<String> selectedGender = 'masc'.obs;

  RxBool withImage = false.obs;
  Rx<Uint8List> imageAsByte =
      Uint8List.fromList(List<int>.generate(1024 * 1024, (_) => Random().nextInt(256))).obs;
  final ImagePicker picker = ImagePicker();

  final emailAndPassKey = GlobalKey<FormState>().obs;
  final personalDataKey = GlobalKey<FormState>().obs;

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
    if (emailAndPassKey.value.currentState != null) {
      if (emailAndPassKey.value.currentState!.validate()) {
        setScreen(1);
      }
    }
  }

  void saveUserData() {
    if (personalDataKey.value.currentState != null) {
      if (personalDataKey.value.currentState!.validate()) {
        setScreen(2);
      }
    }
  }

  void back() {
    if (indexScreen.value == 0) {
      Get.back();
    } else {
      setScreen(indexScreen.value - 1);
    }
  }

  void skip() {
    Get.offAndToNamed(Routes.home);
  }

  Future<void> selectImageType(BuildContext context) async {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (BuildContext context) {
        return SelecteImageBottomSheet(
          getImageCamera: () => uploadImageProfile(ImageSource.camera),
          getImageGallery: () => uploadImageProfile(ImageSource.gallery),
        );
      },
    );
  }

  Future<void> uploadImageProfile(ImageSource imageSource) async {
    XFile? pickedImage = await picker.pickImage(source: imageSource);
    if (pickedImage != null) {
      final croppedImage = await ImageCropper().cropImage(
        sourcePath: pickedImage.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      );

      if (croppedImage != null) {
        imageAsByte.value = await croppedImage.readAsBytes();
        withImage.value = true;
        Get.back();
      }
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
      birthdayDate.value.text = dateFormatter(picked);
    }
  }
}
