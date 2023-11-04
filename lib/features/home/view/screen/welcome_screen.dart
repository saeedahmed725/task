import 'package:flutter/material.dart';
import 'package:flutter_common_extensions/flutter_common_extensions.dart';
import 'package:get/get.dart';

import '../../../../core/controller/home_controller.dart';
import '../../../../core/widgets/custom_text.dart';
import 'home.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  homeController.isTaskOne = true;
                  Get.to(() => const Home());
                },
                child: const CustomText(text: 'Task 1', color: Colors.white)),
            20.height,
            ElevatedButton(
                onPressed: () {
                  homeController.isTaskOne = false;
                  Get.to(() => const Home());
                },
                child: const CustomText(text: 'Task 2', color: Colors.white))
          ],
        ),
      ),
    );
  }
}
