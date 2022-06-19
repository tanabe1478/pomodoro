import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodoro/providers/providers.dart';
import 'package:pomodoro/widgets/widgets.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.read(settingPageTitleProvider)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
          SettingRow(),
        ],
      ),
    );
  }
}
