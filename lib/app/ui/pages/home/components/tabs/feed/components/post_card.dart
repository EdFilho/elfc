import 'package:cached_network_image/cached_network_image.dart';
import 'package:elfc/app/core/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/data/models/models.dart';
import '../../../../../../../core/shared/theme/themes.dart';
import '../../../../../../shared/components/components.dart';

class PostCard extends StatelessWidget {
  final Post postData;
  final void Function() like;

  const PostCard({
    super.key,
    required this.postData,
    required this.like,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: like,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        margin: const EdgeInsets.only(bottom: 16),
        width: Get.width,
        decoration: BoxDecoration(
          color: context.theme.colorScheme.background,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).splashColor,
              spreadRadius: 0,
              blurRadius: 1,
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      child: CachedNetworkImage(
                        imageUrl: postData.userProfileImage,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      children: [
                        Text(postData.userName),
                      ],
                    ),
                    const Spacer(),
                    PopupMenuButton(
                      icon: const CustomIcon(icon: "popup_menu"),
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'item',
                          child: Text('Item 1'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'item',
                          child: Text('Item 2'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'item',
                          child: Text('Item 3'),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 8),
                CachedNetworkImage(
                  imageUrl: postData.image,
                  imageBuilder: (context, imageProvider) => Image(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    width: Get.width,
                  ),
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Visibility(
                      visible: postData.liked,
                      replacement: const CustomIcon(
                        icon: "glove_outlined",
                        size: 30,
                      ),
                      child: const CustomIcon(
                        icon: "glove_solid",
                        size: 30,
                        color: AppColors.errorColor,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const CustomIcon(icon: "chat_outlined"),
                  ],
                ),
                const SizedBox(height: 8),
                Visibility(
                  visible: postData.likes!.isNotEmpty,
                  child: Row(
                    children: [
                      const Text('Curtido por '),
                      Text(
                        postData.likes!.isNotEmpty ? postData.likes![0] : "",
                        style: defaultText.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(' e '),
                      Text(
                        'outras pessoas',
                        style: defaultText.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: postData.userName,
                        style: defaultText.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' ${postData.description}',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
