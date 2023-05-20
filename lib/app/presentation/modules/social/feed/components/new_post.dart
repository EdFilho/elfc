import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/theme/themes.dart';
import '../../../../components/components.dart';
import '../feed.dart';

class NewPost extends GetView<FeedController> {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).splashColor,
            spreadRadius: 0,
            blurRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const ImageProfile(
            withBackground: true,
            bordered: true,
            size: 64,
          ),
          const SizedBox(width: 16),
          Text(
            'Compartilhe seu treino',
            style: defaultText,
          ),
          const Spacer(),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => {},
            icon: const CustomIcon(icon: "new_post"),
          )
        ],
      ),
    );
  }
}
