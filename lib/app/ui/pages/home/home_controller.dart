import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/tabs/tabs.dart';

class HomeController extends GetxController {
  RxInt indexScreen = 0.obs;

  void setScreen(int index) {
    indexScreen.value = index;
  }

  RxList<Widget> screens = <Widget>[
    const FeedPage(),
    const CalendarPage(),
    const ScorePage(),
    const ProfilePage(),
  ].obs;
}
