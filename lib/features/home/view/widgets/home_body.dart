import 'package:flutter/material.dart';
import 'package:task/features/home/view/widgets/services_scrollable_card/services_scrollable_card.dart';

import 'intro_widgets/intro_card.dart';
import 'custom_tab_bar/tab_bar_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        IntroCard(),
        ServicesScrollableCard(),
        TabBarWidget()
      ],
    );
  }
}
