import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_fonts.dart';
import '../../../../../core/constants/static.dart';
import '../../../../../core/controller/home_controller.dart';
import 'custom_tab_bar_border.dart';
import 'custom_tabs.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTabBarBorder(
      child: TabBar(
        controller: controller.tabController,
        indicatorColor: Colors.green,
        indicator: BoxDecoration(
          color: AppColor.kPrimaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
        ),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        dividerColor: Colors.transparent,
        unselectedLabelColor: Colors.black,
        labelColor: Colors.white,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        labelStyle: TextStyle(
            color: Colors.white, fontSize: 14, fontFamily: AppFonts.outfit),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: List.generate(
          Static.tabBarTitles.length,
          (index) => CustomTabs(
            controller: controller,
            index: index,
          ),
        ),
      ),
    );
  }
}
