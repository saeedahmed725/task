import 'package:flutter/material.dart';
import 'package:task/features/home/view/widgets/custom_tab_bar/services.dart';
import 'package:task/features/home/view/widgets/custom_tab_bar/user_widegt.dart';

import '../../../../../core/controller/home_controller.dart';
import '../categories_widget.dart';
import 'orders.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: controller.tabController,
        children: [
          controller.isTaskOne ? const CategoriesWidget() : const UsersWidget(),
          const Services(),
          const Orders(),
        ],
      ),
    );
  }
}
