import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodoro/pages/pages.dart';
import 'package:pomodoro/providers/providers.dart';
import 'package:pomodoro/theme_selector_provider.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String appName = ref.watch(appNameProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ref.read(themeSelectorProvider),
      home: HomePage(title: appName),
    );
  }
}
