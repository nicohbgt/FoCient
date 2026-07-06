import '../presentation/widgets/dashboard_task_card.dart';

class DashboardDummy {
  static const userName = 'John Doe';

  static const completedTasks = 2;

  static const totalTasks = 5;

  static const todayMessage = 'You have 5 tasks waiting today.';

  static const List<DashboardTask> todayTasks = [
    DashboardTask(
      title: 'Complete Dashboard UI',
      category: 'FoCient',
      startTime: '08:00',
      endTime: '10:00',
      priority: TaskPriority.high,
    ),
    DashboardTask(
      title: 'Review UI Components',
      category: 'Development',
      startTime: '13:00',
      endTime: '14:30',
      priority: TaskPriority.medium,
    ),
    DashboardTask(
      title: 'Read Atomic Habits',
      category: 'Personal',
      startTime: '20:00',
      endTime: '21:00',
      priority: TaskPriority.low,
      isCompleted: true,
    ),
  ];
}

class DashboardTask {
  const DashboardTask({
    required this.title,
    required this.category,
    required this.startTime,
    required this.endTime,
    required this.priority,
    this.isCompleted = false,
  });

  final String title;
  final String category;
  final String startTime;
  final String endTime;
  final TaskPriority priority;
  final bool isCompleted;
}
