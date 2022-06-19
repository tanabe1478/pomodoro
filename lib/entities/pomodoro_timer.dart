import 'package:flutter/material.dart';

@immutable
class PomodoroTimer {
  const PomodoroTimer({required this.count});

  final int count;

  // イミュータブルであり、内容を直接変更できないため、コピーを作る必要がある
// これはオブジェクトの各プロパティの内容をコピーして新たなPomodoroTimerを返すメソッド
  PomodoroTimer copyWith({int? count}) {
    return PomodoroTimer(
      count: count ?? this.count,
    );
  }
}
