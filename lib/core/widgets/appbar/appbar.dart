import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_mobile/providers/theme_provider.dart';

class MyAppBar extends StatelessWidget {
  final bool isMainPage;
  const MyAppBar({
    super.key,
    this.isMainPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => AppBar(
        title: isMainPage
            ? const Padding(
                padding: EdgeInsets.only(top: 20),
                // child: Image.asset(
                //   themeProvider.isDark
                //       ? ImagesConstants.logoDarkTheme
                //       : ImagesConstants.logo,
                //   width: 120,
                //   height: 150,
                // ),
                child: Icon(Icons.abc),
              )
            : null,
        leading: const Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
          ),
          // child: Image.asset(
          //   ImagesConstants.psutLogo,
          // ),
          child: Icon(Icons.access_alarms_sharp),
        ),
        actions: [
          if (isMainPage)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {},
                // child: Image.asset(
                //   ImagesConstants.jordanFlagIcon,
                //   width: 60,
                //   height: 60,
                // ),
                child: const Icon(Icons.propane),
              ),
            ),
        ],
      ),
    );
  }
}
