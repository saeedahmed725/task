import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/static.dart';
import '../../../../../core/controller/home_controller.dart';
import '../../../../../core/widgets/custom_text.dart';

class CustomTabs extends StatelessWidget {
  const CustomTabs({
    super.key,
    required this.controller,
    required this.index,
  });

  final HomeController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Tab(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: controller.activeTabIndex.value == index
              ? Colors.transparent
              : AppColor.kLightGrayColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: CustomText(text: Static.tabBarTitles[index]),
      ),
    ));
  }
}
