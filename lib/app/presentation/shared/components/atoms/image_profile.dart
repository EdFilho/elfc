import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  final String? imageProfile;
  final bool bordered;
  final double size;

  const ImageProfile({
    super.key,
    this.imageProfile,
    this.bordered = false,
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      child: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Container(
          padding: bordered ? const EdgeInsets.all(2.0) : EdgeInsets.zero,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/user.png",
            ),
          ),
        ),
      ),
    );
  }
}
