import 'package:flutter/material.dart';
import 'package:task/features/home/view/widgets/intro_widgets/welcome_widget.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/widgets/custom_text.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 17),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeWidget(),
          SizedBox(height: 20),
          CustomText(
              text: 'Multi-Services for Your Real Estate Need',
              fontSize: 16,
              fontWeigh: FontWeight.w800),
          SizedBox(height: 5),
          CustomText(
              text:
              'Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.',
              color: AppColor.kBrightGrayColor,
              fontSize: 16,
              fontWeigh: FontWeight.w200),
        ],
      ),
    );
  }
}