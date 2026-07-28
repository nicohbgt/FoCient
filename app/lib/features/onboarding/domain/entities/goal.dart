import 'package:uuid/uuid.dart';

enum GoalPriority { low, medium, high }

class Goal {
  final String id;
  final String name;
  final DateTime? deadline;
  final String description;
  final GoalPriority priority;

  Goal({
    String? id,
    required this.name,
    this.deadline,
    this.description = '',
    this.priority = GoalPriority.medium,
  }) : id = id ?? const Uuid().v4();
}
