import 'package:flutter/material.dart';

import '../../../../core/shared/enums/enums.dart';
import '../components.dart';

class SelecteImageBottomSheet extends StatelessWidget {
  final void Function() getImageGallery;
  final void Function() getImageCamera;

  const SelecteImageBottomSheet({
    super.key,
    required this.getImageGallery,
    required this.getImageCamera,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 48),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomButtom(
            onTap: getImageGallery,
            label: 'Adicionar foto da galeria',
          ),
          const SizedBox(height: 16),
          CustomButtom(
            onTap: getImageCamera,
            label: 'Tirar foto',
            type: ButtonType.seccond,
          ),
        ],
      ),
    );
  }
}
