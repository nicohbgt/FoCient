import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../task/domain/entities/task.dart';
import '../../../task/presentation/providers/tasks_provider.dart';
import '../../domain/entities/analytics.dart';

final analyticsProvider = Provider<AsyncValue<AnalyticsData>>((ref) {
  return ref.watch(tasksProvider).whenData(_buildAnalytics);
});

AnalyticsData _buildAnalytics(List<Task> tasks) {
  final completed =
      tasks.where((task) => task.status == TaskStatus.completed).length;
  final inProgress =
      tasks.where((task) => task.status == TaskStatus.inProgress).length;
  final todo = tasks.where((task) => task.status == TaskStatus.todo).length;

  final high = tasks.where((task) => task.priority == TaskPriority.high).length;
  final medium =
      tasks.where((task) => task.priority == TaskPriority.medium).length;
  final low = tasks.where((task) => task.priority == TaskPriority.low).length;

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
}
