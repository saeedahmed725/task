import 'package:flutter/material.dart';
import 'package:flutter_common_extensions/flutter_common_extensions.dart';
import 'package:get/get.dart';
import 'package:task/features/home/view/widgets/services_scrollable_card_item.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/static.dart';
import '../../../../core/controller/home_controller.dart';

class ServicesScrollableCard extends StatelessWidget {
  const ServicesScrollableCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.2,
            child: PageView.builder(
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
          ),
          4.height,
          Obx(() => Row(
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
              ))
        ],
      ),
    );
  }
}
