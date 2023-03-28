import 'package:flutter/material.dart';

class SwitcherOption extends StatelessWidget {
  final String title, subTitle;
  final bool checked;
  final void Function() onChanged;

  const SwitcherOption({
    super.key,
    required this.title,
    required this.subTitle,
    required this.checked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChanged,
      splashColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 32),
            SizedBox(
              child: Switch(
                value: checked,
                inactiveThumbColor: Theme.of(context).canvasColor,
                inactiveTrackColor: Theme.of(context).primaryColor,
                onChanged: (bool value) {
                  onChanged();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
