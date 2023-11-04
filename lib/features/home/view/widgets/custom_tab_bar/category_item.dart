import 'package:flutter/material.dart';
import 'package:flutter_common_extensions/flutter_common_extensions.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_image_assets.dart';
import '../../../../../core/widgets/custom_text.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 14, vertical: 0.019 * Get.height),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
                color: AppColor.kBrightGrayColor.withOpacity(0.2),
                offset: const Offset(0, 1),
                blurRadius: 2)
          ]),
      child: Row(
        children: [
          Row(
            children: [
              SvgPicture.asset(image),
              20.width,
              CustomText(text: title, fontSize: 14, fontWeigh: FontWeight.w800),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(AppImageAssets.iconForward),
        ],
      ),
    );
  }
}


