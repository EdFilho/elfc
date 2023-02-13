import 'package:elfc/app/ui/pages/home/components/tabs/feed/components/new_post.dart';
import 'package:elfc/app/ui/pages/home/components/tabs/feed/components/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../home_controller.dart';

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
              Get.changeTheme(
                context.isDarkMode ? ThemeData.light() : ThemeData.dark(),
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
