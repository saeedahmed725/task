import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/features/home/view/widgets/custom_app_bar/home_app_bar.dart';
import 'package:task/features/home/view/widgets/custom_nav_bar/nav_bar.dart';

import '../../../../core/controller/home_controller.dart';
import '../../../../core/widgets/custom_text.dart';
import '../widgets/home_body.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Scaffold(
      appBar: const HomeAppBar(),  // Custom AppBar
      body: Obx(() {
        // to toggle between screens
        return IndexedStack(
          index: homeController.currentIndexNavBar.value,
          children: const [
            HomeBody(),
            AssetsBody(),
            SupportBody(),
            ProfileBody()
          ],
        );
      }),
      bottomNavigationBar: const CustomNavBar(),  // Custom BottomNavigationBar
    );
  }
}

//// then will be move to other files
class AssetsBody extends StatelessWidget {
  const AssetsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: 'AssetsScreen'),
    );
  }
}

class SupportBody extends StatelessWidget {
  const SupportBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: 'SupportScreen'),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: 'ProfileScreen'),
    );
  }
}
