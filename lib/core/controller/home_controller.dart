import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/home/data/api_services.dart';
import '../../features/home/data/user_model.dart';
import '../constants/static.dart';
import '../failure/failure.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  ApiServices services = ApiServices();

  Future<Either<Failure, List<UserModel>>>? usersData;

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

  initApiServices() {
    usersData = services.getUsers();
  }

  @override
  void onInit() {
    initApiServices();
    super.onInit();
    tabController = TabController(
      length: Static.tabBarTitles.length,
      initialIndex: 0,
      vsync: this,
    );
    tabController.addListener(() => activeTabIndex.value = tabController.index);
  }
}
