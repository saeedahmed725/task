import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/static.dart';
import '../../../../../core/controller/home_controller.dart';

class AnimatedDots extends StatelessWidget {
  const AnimatedDots({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            Static.servicesScrollableCardTitles.length,
                (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 10,
              width: index == controller.currentIndexCard.value
                  ? 40
                  : 10,
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:
                  index == controller.currentIndexCard.value
                      ? AppColor.kPrimaryColor
                      : AppColor.kDarkGrayColor),
            ))
      ],
    ));
  }
}
