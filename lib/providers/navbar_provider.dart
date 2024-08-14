import 'package:flutter/material.dart';
import 'package:test_mobile/views/another_view/another_view.dart';
import 'package:test_mobile/views/home_view/home_view.dart';
import 'package:test_mobile/views/profile_view/profile_view.dart';

class BottomNavProvider extends ChangeNotifier {
  var selectedTabIndex = 0;

  List<Widget> pages = const [
    HomePage(),
    AnotherView(),
    ProfileView(),
  ];

  void setTabIndex(int index) {
    selectedTabIndex = index;
    notifyListeners();
  }

  List<BottomNavigationBarItem> getBottomNavigationBarItems() => [
        BottomNavigationBarItem(
          icon: Icon(
            selectedTabIndex == 0 ? Icons.home : Icons.home_outlined,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            selectedTabIndex == 1 ? Icons.info : Icons.info_outline,
          ),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(
              selectedTabIndex == 2 ? Icons.person : Icons.person_2_outlined),
          label: 'Profile',
        ),
      ];
}
