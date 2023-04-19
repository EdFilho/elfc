import 'package:get/get.dart';

import '../events/calendar/calendar.dart';
import '../manager/dashboard/dashboard.dart';
import '../rewards/score/score_controller.dart';
import '../social/feed/feed.dart';
import '../user/profile/profile.dart';
import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CalendarController>(() => CalendarController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<FeedController>(() => FeedController());
    Get.lazyPut<ScoreController>(() => ScoreController());
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
