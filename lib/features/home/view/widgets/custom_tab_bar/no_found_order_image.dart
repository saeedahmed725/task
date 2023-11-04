import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_image_assets.dart';

class NoFoundOrderImage extends StatelessWidget {
  const NoFoundOrderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 0.27 * Get.height,
        width: 0.32 * Get.height,
        padding: const EdgeInsets.all(35),
        decoration: const BoxDecoration(color: AppColor.kLightRedColor),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(AppImageAssets.shoppingBag),
            Positioned(
              top: 95,
              child: SvgPicture.asset(AppImageAssets.lineShoppingBag),
            ),
          ],
        ));
  }
}
