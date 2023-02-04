import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home_controller.dart';

class ScorePage extends GetView<HomeController> {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('ScoreController'),
      ),
    );
  }
}
