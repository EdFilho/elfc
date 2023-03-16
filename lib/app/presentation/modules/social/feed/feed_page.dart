import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/components/components.dart';
import 'components/components.dart';
import 'feed_controller.dart';

class FeedPage extends GetView<FeedController> {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              icon: const CustomIcon(icon: "glove_add")),
          IconButton(
            onPressed: () {},
            icon: const CustomIcon(
              icon: "check_in",
              size: 40,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NewPost(),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.posts.length,
                itemBuilder: (context, index) {
                  return PostCard(
                    postData: controller.posts[index],
                    like: () => controller.like(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
