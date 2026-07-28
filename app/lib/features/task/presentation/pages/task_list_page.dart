import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../../domain/entities/task.dart';
import '../providers/tasks_provider.dart';
import '../widgets/task_card.dart';
import '../widgets/task_empty_state.dart';
import '../widgets/task_filter_bar.dart';
import '../widgets/task_scaffold.dart';
import '../widgets/task_search_bar.dart';

class TaskListPage extends ConsumerStatefulWidget {
  const TaskListPage({super.key});

  @override
  ConsumerState<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends ConsumerState<TaskListPage> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedFilter = 'All';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Task> _applyFilter(List<Task> tasks) {
    final query = _searchController.text.toLowerCase();

    return tasks.where((task) {
      final matchesSearch = query.isEmpty ||
          task.title.toLowerCase().contains(query) ||
          task.category.toLowerCase().contains(query);

      final matchesFilter = switch (_selectedFilter) {
        'Completed' => task.status == TaskStatus.completed,
        'In Progress' => task.status == TaskStatus.inProgress,
        'To Do' => task.status == TaskStatus.todo,
        _ => true, // 'All'
      };

      return matchesSearch && matchesFilter;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final allTasks = ref.watch(tasksProvider);
    final filteredTasks = _applyFilter(allTasks);

    return TaskScaffold(
      title: 'Tasks',
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutes.createTask),
        child: const Icon(Icons.add),
      ),
      child: Column(
        children: [
          TaskSearchBar(
            controller: _searchController,
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: 16),
          TaskFilterBar(
            selectedFilter: _selectedFilter,
            onSelected: (filter) => setState(() => _selectedFilter = filter),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: filteredTasks.isEmpty
                ? const TaskEmptyState()
                : ListView.separated(
                    itemCount: filteredTasks.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final task = filteredTasks[index];
                      return TaskCard(
                        task: task,
                        onTap: () => context.push(AppRoutes.taskDetail),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
