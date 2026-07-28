import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/in_memory_task_repository.dart';
import '../../domain/entities/task.dart';
import '../../domain/repositories/task_repository.dart';

final taskRepositoryProvider = Provider<TaskRepository>(
  (ref) => InMemoryTaskRepository(),
);

class TasksNotifier extends AsyncNotifier<List<Task>> {
  TaskRepository get _repository => ref.read(taskRepositoryProvider);

  @override
  Future<List<Task>> build() {
    return _repository.getTasks();
  }

  Future<void> addTask({
    required String title,
    required String description,
    required String category,
    required TaskPriority priority,
    required DateTime date,
    required DateTime startTime,
    required DateTime endTime,
    DateTime? reminder,
  }) async {
    final task = await _repository.createTask(
      title: title,
      description: description,
      category: category,
      priority: priority,
      date: date,
      startTime: startTime,
      endTime: endTime,
      reminder: reminder,
    );

    state = AsyncData([...(state.valueOrNull ?? const []), task]);
  }

  Future<void> updateTask(Task updated) async {
    final task = await _repository.updateTask(updated);
    final tasks = state.valueOrNull ?? const [];

    state = AsyncData([
      for (final item in tasks) item.id == task.id ? task : item,
    ]);
  }

  Future<void> deleteTask(String id) async {
    await _repository.deleteTask(id);
    final tasks = state.valueOrNull ?? const [];

    state = AsyncData(tasks.where((task) => task.id != id).toList());
  }

  Future<void> toggleStatus(String id) async {
    final tasks = state.valueOrNull ?? const [];
    final index = tasks.indexWhere((task) => task.id == id);

    if (index == -1) return;

    final task = tasks[index];
    final updated = task.copyWith(
      status: task.status == TaskStatus.completed
          ? TaskStatus.todo
          : TaskStatus.values[task.status.index + 1],
    );

    await updateTask(updated);
  }
}

final tasksProvider = AsyncNotifierProvider<TasksNotifier, List<Task>>(
  TasksNotifier.new,
);
