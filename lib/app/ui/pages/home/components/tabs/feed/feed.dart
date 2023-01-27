import 'package:elfc/app/ui/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
