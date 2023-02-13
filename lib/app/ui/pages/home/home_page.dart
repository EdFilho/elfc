import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Get.theme.dividerColor,
              blurRadius: 1,
            ),
          ],
        ),
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.indexScreen.value,
            onTap: (index) => controller.setScreen(index),
            selectedIconTheme: const IconThemeData(size: 30),
            backgroundColor: Get.theme.dialogBackgroundColor,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  color: Theme.of(context).primaryColor,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/calendar.svg',
                  color: Theme.of(context).primaryColor,
                ),
                label: 'Agenda',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/medal.svg',
                  color: Theme.of(context).primaryColor,
                ),
                label: 'Pontuação',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  color: Theme.of(context).primaryColor,
                ),
                label: 'Perfil',
              ),
            ],
          ),
        ),
      ),
      body: Obx(
        () => controller.screens[controller.indexScreen.value],
      ),
    );
  }
}
