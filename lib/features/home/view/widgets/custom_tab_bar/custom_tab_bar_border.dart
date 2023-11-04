import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_colors.dart';

class CustomTabBarBorder extends StatelessWidget {
  const CustomTabBarBorder({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.064 * Get.height,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColor.kBrightGrayColor.withOpacity(0.3)),
      ),
      child: child,
    );
  }
}
