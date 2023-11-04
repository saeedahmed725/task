import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/static.dart';
import '../../../../../core/controller/home_controller.dart';
import '../../../../../core/widgets/custom_text.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Obx(
          () => CustomText(
        text: Static.appNavBarTitles[homeController.currentIndexNavBar.value],
      ),
    );
  }
}
