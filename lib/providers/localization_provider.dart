import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalizationProvider extends ChangeNotifier {
  static const String assetsTranslations = "assets/localization";
  //
  static const Locale english = Locale('en');
  static const Locale spanish = Locale('es');
  static const Locale arabic = Locale('ar');
  static const Locale turkish = Locale('tr');
  static const Locale russian = Locale('ru');
  //
  static List<String> languages = [
    'English',
    'Spanish',
    'عربي',
    'Turkish',
    'Russian',
  ];
  //
  static const all = [
    english,
    spanish,
    arabic,
    turkish,
    russian,
  ];
  String dropdownValue = 'English';

  Future<void> changeLanguage(BuildContext context, String val) async {
    dropdownValue = val;
    if (val == 'English') {
      await context.setLocale(english);
    } else if (val == 'Spanish') {
      await context.setLocale(spanish);
    } else if (val == 'عربي') {
      await context.setLocale(arabic);
    } else if (val == 'Turkish') {
      await context.setLocale(turkish);
    } else if (val == 'Russian') {
      await context.setLocale(russian);
    }
    notifyListeners();
  }
}
