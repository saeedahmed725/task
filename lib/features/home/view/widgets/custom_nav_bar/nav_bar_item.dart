import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:task/core/constants/app_colors.dart';

import '../../../../../core/constants/static.dart';
import '../../../../../core/controller/home_controller.dart';
import '../../../../../core/widgets/custom_text.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Expanded(
      child: InkWell(
        onTap: () => homeController.getCurrentNavBarIndex(index),
        child: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Static.navBarImage[index],
                    color: homeController.currentIndexNavBar.value == index
                        ? AppColor.kPrimaryColor
                        : AppColor.kBrightGrayColor),
                CustomText(
                  text: Static.appNavBarTitles[index],
                  fontWeigh: FontWeight.w600,
                  color: homeController.currentIndexNavBar.value == index
                      ? AppColor.kPrimaryColor
                      : AppColor.kBrightGrayColor,
                )
              ],
            )),
      ),
    );
  }
}
