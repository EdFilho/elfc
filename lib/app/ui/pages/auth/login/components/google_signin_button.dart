import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/shared/colors.dart';
import '../../../../../core/shared/theme.dart';
import '../login_controller.dart';

class GoogleSigninButton extends GetView<LoginController> {
  const GoogleSigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.lightColor,
        shadowColor: Colors.transparent,
        minimumSize: Size(Get.width, 40),
        textStyle: buttonText,
        side: const BorderSide(
          color: AppColors.lightColor,
          width: 1,
        ),
      ),
      onPressed: () => {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Image(
            image: AssetImage(
              "assets/images/google_logo.png",
            ),
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Entrar com a conta Google'),
          )
        ],
      ),
    );
  }
}
