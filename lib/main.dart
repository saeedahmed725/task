import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/features/home/view/screen/home.dart';

import 'config/theme/theme.dart';
import 'core/controller/home_controller.dart';

void main() {
  runApp(const Task());
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BindingsBuilder.put(() => HomeController()),
      theme: appTheme,
      home: const Home(),
    );
  }
}
