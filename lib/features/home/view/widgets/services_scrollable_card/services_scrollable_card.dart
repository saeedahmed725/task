import 'package:flutter/material.dart';
import 'package:flutter_common_extensions/flutter_common_extensions.dart';
import 'package:get/get.dart';
import 'package:task/features/home/view/widgets/services_scrollable_card/services_item_card.dart';

import '../../../../../core/controller/home_controller.dart';
import 'animated_dots.dart';

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
          ServicesItemCard(controller: controller),
          4.height,
          AnimatedDots(controller: controller)
        ],
      ),
    );
  }
}
