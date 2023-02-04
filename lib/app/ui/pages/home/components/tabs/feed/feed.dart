import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home_controller.dart';

class FeedPage extends GetView<HomeController> {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('FeedController'),
      ),
    );
  }
}
