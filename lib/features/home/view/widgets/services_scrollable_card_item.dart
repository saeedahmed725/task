import 'package:flutter/material.dart';
import 'package:flutter_common_extensions/flutter_common_extensions.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/custom_text.dart';
import 'custom_button.dart';

class ServicesScrollableCardItem extends StatelessWidget {
  const ServicesScrollableCardItem({
    super.key,
    required this.title,
    this.subTitle = '',
    required this.textButton,
    required this.image,
  });

  final String title;
  final String subTitle;
  final String textButton;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.kLightRedColor,
      ),
      child: Row(
        children: [
          Column(
            children: [
              10.height,
              CustomText(
                text: title,
                fontSize: 12,
                fontWeigh: FontWeight.w800,
                textAlign: TextAlign.start,
              ),
              if (subTitle.isNotEmpty)
                CustomText(
                    text: subTitle,
                    fontSize: 10,
                    textAlign: TextAlign.start,
                    fontWeigh: FontWeight.w500,
                    color: AppColor.kBrightGrayColor),
              15.height,
              CustomButton(textButton: textButton)
            ],
          ),
          const Spacer(),
          Image.asset(image)
        ],
      ),
    );
  }
}
