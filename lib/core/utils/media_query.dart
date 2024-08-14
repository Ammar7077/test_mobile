import 'package:flutter/cupertino.dart';

double getWidth() =>
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
double getHeight() =>
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;
