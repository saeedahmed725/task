import 'package:flutter/material.dart';

import '../../../../core/constants/app_image_assets.dart';
import '../../../../core/widgets/custom_text.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImageAssets.person),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.0),
          child:
          CustomText(text: 'Hey, Ahmed', fontWeigh: FontWeight.w500),
        ),
        Image.asset(AppImageAssets.welcome)
      ],
    );
  }
}
