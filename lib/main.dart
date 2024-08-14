import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_mobile/my_app.dart';
import 'package:test_mobile/providers/localization_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: LocalizationProvider.assetsTranslations,
      supportedLocales: LocalizationProvider.all,
      fallbackLocale: LocalizationProvider.english,
      child: const MyApp(),
    ),
  );
}
