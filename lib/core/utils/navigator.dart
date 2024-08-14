import 'package:flutter/material.dart';

void navPush(context, route) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => route));

void navReplacement(context, route) => Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => route));

void navPop(context) => Navigator.pop(context);

void navRemoveUntil(context, route) =>
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
