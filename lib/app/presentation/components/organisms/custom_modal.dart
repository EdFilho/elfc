import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/shared/enums/buttom_type.dart';
import '../components.dart';

class CustomModal {
  static Future<bool?> logout() async {
    return await Get.defaultDialog<bool>(
      onWillPop: () async {
        return false;
      },
      title: 'Sair',
      titleStyle: Get.theme.textTheme.titleMedium,
      content: Column(
        children: [
          Text(
            'Deseja realmente sair do aplicativo?',
            style: Get.theme.textTheme.bodyLarge!.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomButtom(
                  small: true,
                  type: ButtonType.seccond,
                  label: 'Cancelar',
                  onTap: () => Get.back(result: false),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomButtom(
                  small: true,
                  label: 'Confirmar',
                  onTap: () => Get.back(result: true),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // static Future<bool> confirm({
  //   required String title,
  //   required String description,
  // }) async {
  //   return await Get.defaultDialog(
  //     onWillPop: () async {
  //       return false;
  //     },
  //     title: title,
  //     contentPadding: EdgeInsets.zero,
  //     titleStyle: defaultTextStyle.copyWith(
  //       fontSize: 20,
  //     ),
  //     content: AlertDialog(
  //       titlePadding: EdgeInsets.zero,
  //       contentPadding: EdgeInsets.only(top: 16),
  //       elevation: 0,
  //       title: Text(
  //         description,
  //         style: defaultTextStyle.copyWith(
  //           fontSize: 18,
  //         ),
  //       ),
  //       content: Row(
  //         children: [
  //           Container(
  //             child: InkWell(
  //               onTap: () {
  //                 Get.back(result: true);
  //               },
  //               child: Center(
  //                 child: Text(
  //                   'Ok',
  //                   style: TextStyle(
  //                     fontSize: 20,
  //                     color: AppColors.accentColor,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Spacer(),
  //           Container(
  //             child: InkWell(
  //               onTap: () {
  //                 Get.back(result: false);
  //               },
  //               child: Center(
  //                 child: Text(
  //                   'Cancelar',
  //                   style: TextStyle(
  //                     fontSize: 20,
  //                     color: AppColors.accentColor,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
