import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/task.dart';

class TasksNotifier extends Notifier<List<Task>> {
  static const _uuid = Uuid();

  @override
  List<Task> build() => [];

  /// Add a new task — generates a UUID for the id.
  void addTask({
    required String title,
    required String description,
    required String category,
    required TaskPriority priority,
    required DateTime date,
    required DateTime startTime,
    required DateTime endTime,
    DateTime? reminder,
  }) {
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
    state = [...state, task];
  }

  /// Replace an existing task by id.
  void updateTask(Task updated) {
    state = [
      for (final t in state) t.id == updated.id ? updated : t,
    ];
  }

  /// Remove a task by id.
  void deleteTask(String id) {
    state = state.where((t) => t.id != id).toList();
  }

  /// Toggle between todo / inProgress / completed cycling.
  void toggleStatus(String id) {
    state = [
      for (final t in state)
        if (t.id == id)
          t.copyWith(
            status: t.status == TaskStatus.completed
                ? TaskStatus.todo
                : TaskStatus.values[t.status.index + 1],
          )
        else
          t,
    ];
  }
}

final tasksProvider = NotifierProvider<TasksNotifier, List<Task>>(
  TasksNotifier.new,
);
