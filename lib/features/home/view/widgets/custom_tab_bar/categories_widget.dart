import 'package:flutter/material.dart';
import 'package:flutter_common_extensions/flutter_common_extensions.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/static.dart';
import '../../../../../core/widgets/custom_text.dart';
import 'category_item.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: Column(
        children: [
          const Row(
            children: [
              CustomText(
                text: 'Categories View',
                fontWeigh: FontWeight.w600,
              ),
              Spacer(),
              CustomText(
                text: "see all",
                fontWeigh: FontWeight.w500,
                color: AppColor.kDarkGrayColor,
                decoration: TextDecoration.underline,
              )
            ],
          ),
          12.height,
          ...List.generate(
            Static.categoryTitles.length,
            (index) => CategoryItem(
              title: Static.categoryTitles[index],
              image: Static.categoryLeadingImage[index],
            ),
          )
        ],
      ),
    );
  }
}
