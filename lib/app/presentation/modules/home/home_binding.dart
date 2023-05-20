import 'package:get/get.dart';

import '../../../data/infra/http/http.dart';
import '../../../data/repositories/repositories.dart';
import '../../../domain/usecases/usecases.dart';
import '../events/calendar/calendar.dart';
import '../manager/dashboard/dashboard.dart';
import '../rewards/score/score_controller.dart';
import '../social/feed/feed.dart';
import '../user/profile/profile.dart';
import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    final IHttpClient httpClient = Get.find<IHttpClient>();

    final MeRepository meRepo = MeRepository(httpClient: httpClient);

    Get.lazyPut<MeUsecase>(() => IMeUsecase(repository: meRepo));

    Get.lazyPut<HomeController>(
      () => HomeController(authController: Get.find()),
    );
    Get.lazyPut<CalendarController>(() => CalendarController());
    Get.lazyPut<ProfileController>(
      () => ProfileController(
        meUsecase: Get.find(),
        authController: Get.find(),
      ),
    );
    Get.lazyPut<FeedController>(
      () => FeedController(authController: Get.find()),
    );
    Get.lazyPut<ScoreController>(() => ScoreController());
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
