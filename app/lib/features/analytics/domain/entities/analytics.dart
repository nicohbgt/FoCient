class AnalyticsData {
  const AnalyticsData({
    required this.totalTasks,
    required this.completedTasks,
    required this.todoTasks,
    required this.inProgressTasks,
    required this.highPriorityTasks,
    required this.mediumPriorityTasks,
    required this.lowPriorityTasks,
    required this.categoryDistribution,
  });

  final int totalTasks;

  final int completedTasks;
  final int todoTasks;
  final int inProgressTasks;

  final int highPriorityTasks;
  final int mediumPriorityTasks;
  final int lowPriorityTasks;

  final Map<String, int> categoryDistribution;

  double get completionRate {
    if (totalTasks == 0) return 0;
    return completedTasks / totalTasks;
  }

  int get pendingTasks {
    return totalTasks - completedTasks;
  }
}
