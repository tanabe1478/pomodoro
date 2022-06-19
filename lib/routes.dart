import 'package:flutter/material.dart';
import 'package:pomodoro/pages/pages.dart';

final Map<String, WidgetBuilder> routes = {
  RoutePath.home.name: (BuildContext context) => HomePage(),
  RoutePath.setting.name: (BuildContext context) => SettingPage(),
};

enum RoutePath {
  home,
  setting,
}

extension RoutePathExtension on RoutePath {
  String get name {
    switch (this) {
      case RoutePath.home:
        return '/';
      case RoutePath.setting:
        return '/setting';
    }
  }
}
