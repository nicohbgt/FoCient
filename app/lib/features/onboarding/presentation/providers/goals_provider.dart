import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/goal.dart';

class GoalsNotifier extends Notifier<List<Goal>> {
  @override
  List<Goal> build() {
    return [];
  }

  void addGoal(Goal goal) {
    state = [...state, goal];
  }

  void removeGoal(String id) {
    state = state.where((goal) => goal.id != id).toList();
  }
}

final goalsProvider = NotifierProvider<GoalsNotifier, List<Goal>>(
  () => GoalsNotifier(),
);
