import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/controller/home_controller.dart';
import '../../../data/user_model.dart';
import '../user_item.dart';

class UsersWidget extends StatelessWidget {
  const UsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return FutureBuilder<List<UserModel>>(
        future: controller.usersData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: List.generate(
                  snapshot.data!.length, (index) =>
                  UserItem(id: snapshot.data![index].id,
                      name: snapshot.data![index].name)),
            );
          } else {
            return Container();
          }
        });
  }
}
