import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_mobile/core/widgets/appbar/appbar.dart';
import 'package:test_mobile/providers/navbar_provider.dart';

class NavBarHandler extends StatelessWidget {
  const NavBarHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (context, bottomNavProvider, child) => Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child: MyAppBar(
              isMainPage: bottomNavProvider.selectedTabIndex == 0,
            )),
        body: IndexedStack(
          index: bottomNavProvider.selectedTabIndex,
          children: bottomNavProvider.pages,
        ),
        bottomNavigationBar: Directionality(
          textDirection: TextDirection.ltr,
          child: BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            currentIndex: bottomNavProvider.selectedTabIndex,
            onTap: (index) => bottomNavProvider.setTabIndex(index),
            items: bottomNavProvider.getBottomNavigationBarItems(),
          ),
        ),
      ),
    );
  }
}
