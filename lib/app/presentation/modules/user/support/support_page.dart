import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/components/components.dart';
import 'support_controller.dart';

class SupportPage extends GetView<SupportController> {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suporte'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 16,
              ),
              child: Text(
                'Contate-nos',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            MenuOptions(
              label: 'Ligar',
              onTap: () => {},
              icon: 'phone',
            ),
            MenuOptions(
              label: 'WhatsApp',
              onTap: () => {},
              icon: 'whatsapp',
            ),
            MenuOptions(
              label: 'E-mail',
              onTap: () => {},
              icon: 'email',
            ),
            MenuOptions(
              label: 'Redes sociais',
              onTap: () => {},
              icon: 'social_media',
            ),
          ],
        ),
      ),
    );
  }
}
