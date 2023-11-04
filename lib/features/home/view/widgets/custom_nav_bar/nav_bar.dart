import 'package:flutter/material.dart';
import 'package:task/core/constants/static.dart';

import 'nav_bar_item.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: List.generate(
          Static.navBarImage.length,
          (index) => NavBarItem(index: index),
        ),
      ),
    );
  }
}
