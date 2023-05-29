import 'package:get/get.dart';

import '../../../../domain/entities/entities.dart';
import '../../../../domain/usecases/usecases.dart';
import '../../../app_routes.dart';
import '../../../controllers/controllers.dart';

class ProfileController extends GetxController {
  final MeUsecase meUsecase;
  final AuthController authController;

  ProfileController({
    required this.meUsecase,
    required this.authController,
  });

  RxBool isLoading = false.obs;
  Rx<UserEntity>? user;

  @override
  Future<void> onInit() async {
    await getUser();
    super.onInit();
  }

  Future<void> getUser() async {
    isLoading.toggle();
    UserEntity? tempUser = await meUsecase.call();
    if (tempUser != null) {
      // print('props => ${tempUser.props}');
    }
  }

  void toSettings() {
    Get.toNamed(Routes.editProfile);
  }
}
