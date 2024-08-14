import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_mobile/core/utils/media_query.dart';
import 'package:test_mobile/providers/localization_provider.dart';
import 'package:test_mobile/providers/theme_provider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeProvider, LocalizationProvider>(
      builder: (_, themeProvider, localizationProvider, __) => Scaffold(
        body: ListView(
          padding: EdgeInsets.all(getWidth() * 0.035),
          children: [
            DropdownButton<String>(
              value: LocalizationProvider.languages.first,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? value) {
                localizationProvider.changeLanguage(context, value!);
              },
              items: LocalizationProvider.languages
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
