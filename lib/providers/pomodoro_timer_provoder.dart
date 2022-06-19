import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/entities.dart';

class PomodoroTimerNotifier extends StateNotifier<PomodoroTimer> {
  PomodoroTimerNotifier() : super(const PomodoroTimer(count: 0));

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}

final pomodoroTimerProvider =
    StateNotifierProvider<PomodoroTimerNotifier, PomodoroTimer>(
        (ref) => PomodoroTimerNotifier());
