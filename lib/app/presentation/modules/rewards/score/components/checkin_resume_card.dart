import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class CheckinResumeCard extends StatelessWidget {
  const CheckinResumeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Row(
        children: [
          Image(
            height: 88,
            image: AssetImage(
              context.isDarkMode
                  ? "assets/images/logo_white.png"
                  : "assets/images/logo_black.png",
            ),
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              children: [
                Text(
                  "10",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Check-ins realizados",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const VerticalDivider(),
          Flexible(
            child: Column(
              children: [
                Text(
                  "07",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Check-ins este mês",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
