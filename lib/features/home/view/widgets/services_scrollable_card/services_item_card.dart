import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/static.dart';
import '../../../../../core/controller/home_controller.dart';
import 'services_scrollable_card_item.dart';

class ServicesItemCard extends StatelessWidget {
  const ServicesItemCard({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.2,
      child: PageView.builder(
        controller: controller.pageController,
        itemCount: Static.servicesScrollableCardTitles.length,
        onPageChanged: (value) => controller.onPageChange(value),
        itemBuilder: (context, index) {
          return ServicesScrollableCardItem(
            title: Static.servicesScrollableCardTitles[index],
            textButton: Static.servicesScrollableCardTitlesButton[index],
            image: Static.servicesScrollableCardImage[index],
            subTitle: index == 0 ? Static.servicesCardSubTitle : '',
          );
        },
      ),
    );
  }
}
