import 'package:example/core/common/icon_path.dart';
import 'package:example/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController {
  final _selectedIndex = 0.obs;
  int get currentIndex => _selectedIndex.value;

  void changeIndex(int index) {
    _selectedIndex.value = index;
  }

  final List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  final List<String> labels = ['Home', 'My Booking', 'Message', 'Profile'];

  final List<String> iconPaths = [
    IconPath.home,
    IconPath.booking,
    IconPath.message,
    IconPath.profile,
  ];

  void backToHome() {
    changeIndex(0);
  }
}
