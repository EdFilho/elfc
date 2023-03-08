import 'package:elfc/app/core/shared/utilities/number/thousand_formatter.dart';
import 'package:flutter/material.dart';

import '../components.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Theme.of(context).colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/glove.png",
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Luvas vermelhas",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  "Tamanho: 12oz",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  "${thousandFormatter(20000)} Pontos",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                CustomButtom(
                  onTap: () => {},
                  label: "Resgatar",
                  small: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
