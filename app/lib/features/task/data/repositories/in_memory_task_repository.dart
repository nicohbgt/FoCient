import 'package:uuid/uuid.dart';

import '../../domain/entities/task.dart';
import '../../domain/repositories/task_repository.dart';

class InMemoryTaskRepository implements TaskRepository {
  InMemoryTaskRepository();

  static const _uuid = Uuid();

  final List<Task> _tasks = [];

  @override
  Future<List<Task>> getTasks() async {
    return List.unmodifiable(_tasks);
  }

  @override
  Future<Task> createTask({
    required String title,
    required String description,
    required String category,
    required TaskPriority priority,
    required DateTime date,
    required DateTime startTime,
    required DateTime endTime,
    DateTime? reminder,
  }) async {
    final task = Task(
      id: _uuid.v4(),
      title: title,
      description: description,
      category: category,
      priority: priority,
      status: TaskStatus.todo,
      date: date,
      startTime: startTime,
      endTime: endTime,
      reminder: reminder,
    );

    _tasks.add(task);
    return task;
  }

  @override
  Future<Task> updateTask(Task task) async {
    final index = _tasks.indexWhere((item) => item.id == task.id);

    if (index == -1) {
      throw StateError('Task not found: ${task.id}');
    }

    _tasks[index] = task;
    return task;
  }

  @override
  Future<void> deleteTask(String id) async {
    _tasks.removeWhere((task) => task.id == id);
  }
}
