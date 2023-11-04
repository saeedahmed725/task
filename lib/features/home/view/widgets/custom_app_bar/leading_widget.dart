import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/constants/app_image_assets.dart';

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppImageAssets.drawerIcon,
      fit: BoxFit.none,
      height: 20,
      width: 20,
    );
  }
}
