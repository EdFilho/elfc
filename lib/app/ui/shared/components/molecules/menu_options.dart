import 'package:flutter/material.dart';

import '../../../../core/shared/enums/menu_option_type.dart';
import '../components.dart';

class MenuOptions extends StatelessWidget {
  final String label;
  final void Function() onTap;
  final MenuOptionType type;
  final bool switcherOn;

  const MenuOptions({
    super.key,
    required this.label,
    required this.onTap,
    this.type = MenuOptionType.router,
    this.switcherOn = false,
  });

  Widget optionIcon(BuildContext context) {
    switch (type) {
      case MenuOptionType.router:
        return const CustomIcon(
          icon: "arrow_right",
        );
      case MenuOptionType.switcher:
        return Switch(
          onChanged: (bool value) {
            onTap();
          },
          value: switcherOn,
          inactiveThumbColor: Theme.of(context).canvasColor,
          inactiveTrackColor: Theme.of(context).primaryColor,
        );
      default:
        return const CustomIcon(
          icon: "arrow_right",
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: type == MenuOptionType.router ? 24 : 13,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).dialogBackgroundColor,
          border: Border(
            bottom: BorderSide(
              width: 0.25,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        child: Row(
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(),
            optionIcon(context),
          ],
        ),
      ),
    );
  }
}
