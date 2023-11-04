import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CustomText(
            text: 'This is Services Page',
            fontSize: 18,
            fontWeigh: FontWeight.w900,
            textAlign: TextAlign.center));
  }
}
