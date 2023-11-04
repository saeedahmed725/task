import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/widgets/custom_text.dart';

import '../../../../../core/controller/home_controller.dart';
import 'user_item.dart';

class UsersWidget extends StatelessWidget {
  const UsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return FutureBuilder(
        future: controller.usersData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!.fold((failure) {
              return Center(
                child: CustomText(text: failure.message),
              );
            }, (users) {
              return Column(
                children: List.generate(
                  users.length,
                  (index) =>
                      UserItem(id: users[index].id, name: users[index].name),
                ),
              );
            });
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
