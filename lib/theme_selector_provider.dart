import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _themePrefsKey = 'selectedThemeKey';

final ThemeData lightThemeData = ThemeData.light().copyWith(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Color.fromARGB(255, 255, 81, 0),
    secondary: Colors.orange,
  ),
);

final ThemeData darkThemeData = ThemeData.dark().copyWith();

// テーマ選択
final themeSelectorProvider = StateNotifierProvider<ThemeSelector, ThemeMode>(
  (ref) => ThemeSelector(ref.read),
);

// テーマの変更、記憶を行うStatenotofier
class ThemeSelector extends StateNotifier<ThemeMode> {
  ThemeSelector(this._reader) : super(ThemeMode.system) {
    initialize();
  }

// SharedPreferenceで使用するテーマ記憶用のキー
  static const themePrefsKey = 'selectedTheme';

// 現状他のProviderを読みこむことは削除しても良い
// ignore: unused_field
  final Reader _reader;

// 選択されたテーマの記憶があれば取得して反映
  Future initialize() async {
    final themeIndex = await _themeIndex;
    state = ThemeMode.values.firstWhere(
        (element) => element.index == themeIndex,
        orElse: () => ThemeMode.system);
  }

// テーマの変更を行い永続化
  Future<void> change(ThemeMode theme) async {
    await _save(themeIndex: theme.index);
    state = state;
  }

// 現在取得中のテーマを`SharedPreferences`から取得
  Future<int?> get _themeIndex async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(themePrefsKey);
  }

// 選択した`SharedPreferences`に保存
  Future<void> _save({required int themeIndex}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(themePrefsKey, themeIndex);
  }
}
