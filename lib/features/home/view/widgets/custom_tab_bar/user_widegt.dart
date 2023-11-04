import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/widgets/custom_text.dart';

import '../../../../../core/controller/home_controller.dart';
import '../user_item.dart';

class UsersWidget extends StatelessWidget {
  const UsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return FutureBuilder(
        future: controller.usersData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!.fold((l) {
              return Center(
                child: CustomText(text: l.message),
              );
            }, (r) {
              return Column(
                children: List.generate(r.length,
                    (index) => UserItem(id: r[index].id, name: r[index].name)),
              );
            });
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
