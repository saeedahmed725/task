import 'package:flutter/material.dart';
import 'package:flutter_common_extensions/flutter_common_extensions.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.textButton,
  });

  final Function()? onTap;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 7),
        margin: const EdgeInsets.symmetric(horizontal: 2),
        alignment: Alignment.center,
        width: 0.37* Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColor.kPrimaryColor,
        ),
        child: CustomText(
            text: textButton,
            fontSize: 14,
            color: Colors.white,
            fontWeigh: FontWeight.w500),
      ),
    );
  }
}