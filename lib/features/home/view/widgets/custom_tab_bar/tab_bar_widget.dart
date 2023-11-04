import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/constants/static.dart';

import '../../../../../core/controller/home_controller.dart';
import 'custom_tab_bar.dart';
import 'custom_tab_bar_view.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return SizedBox(
      height: 0.57 * Get.height,
      child: DefaultTabController(
        length: Static.tabBarTitles.length,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTabBar(controller: controller),
                CustomTabBarView(controller: controller)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
