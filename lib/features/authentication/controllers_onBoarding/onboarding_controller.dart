import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yourbeauty/features/authentication/screens/login/login.dart';

class onBoardingController extends GetxController {
  static onBoardingController get instance => Get.find();

  // variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // update current index & jump to next page
  void nextPage() {
    print(currentPageIndex.value);
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
