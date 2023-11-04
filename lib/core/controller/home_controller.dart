import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/home/data/api_services.dart';
import '../../features/home/data/user_model.dart';
import '../constants/static.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  PageController pageController = PageController();

  ApiServices services = ApiServices();

  Future<List<UserModel>> usersData =
      Future(() => []); // to get User data ==> singleTune
  bool isTaskOne = true;

  RxInt activeTabIndex = RxInt(0);

  RxInt currentIndexCard = RxInt(0);

  RxInt currentIndexNavBar = RxInt(0);

  onPageChange(int value) {
    currentIndexCard.value = value; // current index  of page view to currentIndexCard
  }

  getCurrentNavBarIndex(int value) {
    currentIndexNavBar.value = value; // current index  of nav Bar to currentIndexNavBar
  }

  automaticScrollCard() {
    Timer.periodic(const Duration(seconds: 4), (timer) {
      currentIndexCard.value++;
      if (currentIndexCard.value >
          Static.servicesScrollableCardTitlesButton.length - 1) {
        // if current index of card > item length , will be zero then animate to next index
        currentIndexCard.value = 0;
      }
      pageController.animateToPage(currentIndexCard.value,
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    });
  }

  @override
  void onInit() {
    usersData = services.getUsers(); // get data from Api as List<UserModel>
    super.onInit();
    tabController = TabController(
      length: Static.tabBarTitles.length,
      animationDuration: const Duration(milliseconds: 200),
      initialIndex: 0,
      vsync: this,
    );
    tabController.addListener(() => activeTabIndex.value = tabController.index);
    // to listen on TabController and pass current tab index to activeTabIndex
    automaticScrollCard();
  }
}
