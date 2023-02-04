import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../core/shared/colors.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.indexScreen.value,
          onTap: (index) => controller.setScreen(index),
          backgroundColor: AppColors.lightColor,
          selectedIconTheme: const IconThemeData(size: 30),
          showUnselectedLabels: true,
          selectedItemColor: AppColors.lightColor,
          unselectedItemColor: AppColors.darkGrey,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.calendarDays),
              label: 'Agenda',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.award),
              label: 'Pontuação',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidUser),
              label: 'Perfil',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.screens[controller.indexScreen.value],
        ),
      ),
    );
  }
}
