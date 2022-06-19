import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

class PomodoroTimerNotifier extends StateNotifier<PomodoroTimer> {
  PomodoroTimerNotifier() : super(const PomodoroTimer(count: 0));

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}

final pomodoroTimerProvider =
    StateNotifierProvider<PomodoroTimerNotifier, PomodoroTimer>(
        (ref) => PomodoroTimerNotifier());
