import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../task/presentation/providers/tasks_provider.dart';
import '../../domain/entities/analytics.dart';

/// Derived provider — computes AnalyticsData from the real task list.
/// No dummy data involved. Automatically updates when tasks change.
final analyticsProvider = Provider<AnalyticsData>((ref) {
  final tasks = ref.watch(tasksProvider);

  final completed = tasks.where((t) => t.status.name == 'completed').length;
  final inProgress = tasks.where((t) => t.status.name == 'inProgress').length;
  final todo = tasks.where((t) => t.status.name == 'todo').length;

  final high = tasks.where((t) => t.priority.name == 'high').length;
  final medium = tasks.where((t) => t.priority.name == 'medium').length;
  final low = tasks.where((t) => t.priority.name == 'low').length;

  // Build category distribution map
  final Map<String, int> categoryDist = {};
  for (final task in tasks) {
    categoryDist[task.category] = (categoryDist[task.category] ?? 0) + 1;
  }

  return AnalyticsData(
    totalTasks: tasks.length,
    completedTasks: completed,
    todoTasks: todo,
    inProgressTasks: inProgress,
    highPriorityTasks: high,
    mediumPriorityTasks: medium,
    lowPriorityTasks: low,
    categoryDistribution: categoryDist,
  );
});
