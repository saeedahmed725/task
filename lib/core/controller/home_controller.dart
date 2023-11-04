import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/home/data/api_services.dart';
import '../../features/home/data/user_model.dart';
import '../constants/static.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  ApiServices services = ApiServices();

  Future<List<UserModel>> usersData = Future(() => []);

  bool isTaskOne = true;

  RxInt activeTabIndex = RxInt(0);

  RxInt currentIndexCard = RxInt(0);

  RxInt currentIndexNavBar = RxInt(0);

  onPageChange(int value) {
    currentIndexCard.value = value;
  }

  getCurrentNavBarIndex(int value) {
    currentIndexNavBar.value = value;
  }

  @override
  void onInit() {
    usersData = services.getUsers();

    super.onInit();
    tabController = TabController(
      length: Static.tabBarTitles.length,
      initialIndex: 0,
      vsync: this,
    );
    tabController.addListener(() => activeTabIndex.value = tabController.index);
  }
}
