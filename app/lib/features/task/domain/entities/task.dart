enum TaskPriority {
  low,
  medium,
  high,
}

enum TaskStatus {
  todo,
  inProgress,
  completed,
}

class Task {
  const Task({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.priority,
    required this.status,
    required this.startTime,
    required this.endTime,
    required this.date,
    this.reminder,
  });

  final String id;

  final String title;
  final String description;

  final String category;

  final TaskPriority priority;
  final TaskStatus status;

  final DateTime date;
  final DateTime startTime;
  final DateTime endTime;

  final DateTime? reminder;
}
