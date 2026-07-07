import '../domain/entities/analytics.dart';

class AnalyticsDummy {
  const AnalyticsDummy._();

  static const AnalyticsData data = AnalyticsData(
    totalTasks: 20,
    completedTasks: 12,
    todoTasks: 5,
    inProgressTasks: 3,
    highPriorityTasks: 5,
    mediumPriorityTasks: 8,
    lowPriorityTasks: 7,
    categoryDistribution: {
      'Development': 6,
      'College': 5,
      'Personal': 4,
      'Health': 3,
      'Learning': 2,
    },
  );
}
