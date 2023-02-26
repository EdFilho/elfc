import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/components/components.dart';
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
            backgroundColor: Theme.of(context).dialogBackgroundColor,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: CustomIcon(icon: "home_outlined"),
                activeIcon: CustomIcon(icon: "home"),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: CustomIcon(icon: "calendar_outlined"),
                activeIcon: CustomIcon(icon: "calendar"),
                label: 'Agenda',
              ),
              BottomNavigationBarItem(
                icon: CustomIcon(icon: "medal_outlined"),
                activeIcon: CustomIcon(icon: "medal"),
                label: 'Pontuação',
              ),
              BottomNavigationBarItem(
                icon: ImageProfile(
                  size: 48,
                ),
                activeIcon: ImageProfile(
                  size: 48,
                  bordered: true,
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
