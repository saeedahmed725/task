import 'package:flutter/material.dart';
import 'package:task/features/home/view/widgets/custom_app_bar/app_bar_title.dart';

import 'leading_widget.dart';

class HomeAppBar extends StatelessWidget implements PreferredSize {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const LeadingWidget(),
      title: const AppBarTitle(),
      centerTitle: true,
    );
  }

  @override
  Widget get child => Container();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
