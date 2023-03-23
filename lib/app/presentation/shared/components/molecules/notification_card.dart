import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 8,
            child: Text(
              'Há 1 semana',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  context.isDarkMode
                      ? "assets/images/logo_white.png"
                      : "assets/images/logo_black.png",
                  height: 72,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Não esqueça o check-in',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        'Olá, faça o seu check-in e ganhe mais pontos',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
