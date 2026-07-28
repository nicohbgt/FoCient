import '../entities/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getTasks();

  Future<Task> createTask({
    required String title,
    required String description,
    required String category,
    required TaskPriority priority,
    required DateTime date,
    required DateTime startTime,
    required DateTime endTime,
    DateTime? reminder,
  });

  Future<Task> updateTask(Task task);

  Future<void> deleteTask(String id);
}
