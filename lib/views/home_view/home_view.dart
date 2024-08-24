import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_mobile/providers/localization_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalizationProvider>(
      builder: (context, localizationProvider, child) => Scaffold(
        body: Column(
          children: [
            Text("HomePage".tr()),
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: Card(
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.abc),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "AAA",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Card(
                        color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ssssssssssssssssssssssssssssssss",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: -30,
                  top: 60,
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Card(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: -30,
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Card(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
