import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/components.dart';
import 'notification_controller.dart';

class NotificationPage extends GetView<NotificationController> {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificações'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Visibility(
                visible: controller.seeMore.isFalse,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        'Faturas em aberto',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Obx(
                      () => ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.permissions.length,
                        itemBuilder: (context, index) {
                          return SwitcherOption(
                            title: controller.permissions[index].title,
                            subTitle: controller.permissions[index].subTitle,
                            checked: controller.permissions[index].isActive,
                            onChanged: () => controller.changeNotification(index),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Row(
                children: [
                  Text(
                    'Faturas em aberto',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => controller.seeMore.toggle(),
                    child: Obx(
                      () => Visibility(
                        visible: controller.seeMore.isFalse,
                        replacement: Text(
                          'Ver menos',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        child: Text(
                          'Ver mais',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const NotificationCard(),
            const NotificationCard(),
            const NotificationCard(),
            const NotificationCard(),
            const NotificationCard(),
          ],
        ),
      ),
    );
  }
}
