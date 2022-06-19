import 'package:flutter/material.dart';
import 'package:pomodoro/pages/pages.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => HomePage(),
  '/setting': (BuildContext context) => SettingPage(),
};
