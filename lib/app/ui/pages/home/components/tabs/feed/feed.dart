import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../home_controller.dart';
import 'components/components.dart';

class FeedPage extends GetView<HomeController> {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
        leading: Image(
          image: AssetImage(
            context.isDarkMode
                ? "assets/images/logo_white.png"
                : "assets/images/logo_black.png",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.changeThemeMode(
                context.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
            },
            icon: SvgPicture.asset(
              'assets/icons/check_in.svg',
              color: context.iconColor,
              height: 40,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NewPost(),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: const [
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
                Post(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
