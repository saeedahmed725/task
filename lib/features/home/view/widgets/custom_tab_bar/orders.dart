import 'package:flutter/material.dart';
import 'package:flutter_common_extensions/flutter_common_extensions.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/widgets/custom_text.dart';
import 'no_found_order_image.dart';

class Orders extends StatelessWidget {
  const Orders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        25.height,
        const NoFoundOrderImage(),
        10.height,
        const CustomText(
            text: 'No orders found',
            fontSize: 18,
            fontWeigh: FontWeight.w900,
            textAlign: TextAlign.center),
        5.height,
        const CustomText(
            text: 'you can place your needed orders to\n let serve you.',
            color: AppColor.kDarkGrayColor,
            fontWeigh: FontWeight.w400,
            textAlign: TextAlign.center),
      ],
    );
  }
}
