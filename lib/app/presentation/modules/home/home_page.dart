import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/components.dart';
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
                icon: CustomIcon(icon: "home_outlined", size: 32),
                activeIcon: CustomIcon(
                  icon: "home",
                  size: 32,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: CustomIcon(icon: "calendar_outlined", size: 32),
                activeIcon: CustomIcon(icon: "calendar", size: 32),
                label: 'Agenda',
              ),
              BottomNavigationBarItem(
                icon: CustomIcon(icon: "bar_chart_outlined", size: 32),
                activeIcon: CustomIcon(icon: "bar_chart", size: 32),
                label: 'Gestão',
              ),
              BottomNavigationBarItem(
                icon: CustomIcon(icon: "medal_outlined", size: 32),
                activeIcon: CustomIcon(icon: "medal", size: 32),
                label: 'Pontuação',
              ),
              BottomNavigationBarItem(
                icon: ImageProfile(
                  selected: false,
                  size: 32,
                ),
                activeIcon: ImageProfile(
                  size: 32,
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
