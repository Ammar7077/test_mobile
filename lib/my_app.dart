import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_mobile/core/widgets/theme/light_theme.dart';
import 'package:test_mobile/navbar.dart';
import 'package:test_mobile/providers/localization_provider.dart';
import 'package:test_mobile/providers/navbar_provider.dart';
import 'package:test_mobile/providers/theme_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => BottomNavProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => LocalizationProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome Jordan',
        //------------------ language ------------------//
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        // --------- ------------------- -------------- //
        //? Theme
        // darkTheme: getDarkTheme(),
        // theme: themeProvider.isDark ? getDarkTheme() : getLightTheme(),
        theme: getLightTheme(),
        home: const NavBarHandler(),
      ),
    );
  }
}
