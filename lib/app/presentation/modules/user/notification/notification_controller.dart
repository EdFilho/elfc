import 'package:get/get.dart';

import '../../../../domain/entities/entities.dart';

class NotificationController extends GetxController {
  RxBool seeMore = false.obs;

  void changeNotification(int index) {
    permissions[index].isActive = !permissions[index].isActive;
    permissions.value = [
      ...permissions,
    ];
  }

  RxList<NotificationPermission> permissions = [
    NotificationPermission(
      title: 'Lembrete de aula',
      subTitle: 'Permita que seja notificado pelo aplicativo acerca de suas aulas',
      isActive: false,
    ),
    NotificationPermission(
      title: 'Lembrete de pagamento',
      subTitle:
          'Permita que seja notificado pelo aplicativo acerca do pagamento de seus vencimentos',
      isActive: false,
    ),
    NotificationPermission(
      title: 'Curtidas',
      subTitle: 'Permita que demais usuários curtam suas publicações',
      isActive: false,
    ),
    NotificationPermission(
      title: 'Comentários',
      subTitle: 'Permita que demais usuários comentem suas publicações',
      isActive: false,
    ),
  ].obs;
}
