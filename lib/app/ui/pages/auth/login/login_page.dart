import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../shared/atoms/custom_text_field.dart';
import './login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            controller: controller.emailController.value,
            label: 'Usuário',
          ),
        ],
      ),
    );
  }
}
