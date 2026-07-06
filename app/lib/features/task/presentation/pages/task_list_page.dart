import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../../data/task_dummy.dart';

import '../widgets/task_card.dart';
import '../widgets/task_filter_bar.dart';
import '../widgets/task_scaffold.dart';
import '../widgets/task_search_bar.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({
    super.key,
  });

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final TextEditingController _searchController = TextEditingController();

  String _selectedFilter = 'All';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tasks = TaskDummy.tasks;

    return TaskScaffold(
      title: 'Tasks',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(AppRoutes.createTask);
        },
        child: const Icon(Icons.add),
      ),
      child: Column(
        children: [
          TaskSearchBar(
            controller: _searchController,
          ),
          const SizedBox(height: 16),
          TaskFilterBar(
            selectedFilter: _selectedFilter,
            onSelected: (filter) {
              setState(() {
                _selectedFilter = filter;
              });
            },
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ListView.separated(
              itemCount: tasks.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final task = tasks[index];

                return TaskCard(
                  task: task,
                  onTap: () {
                    context.push(
                      AppRoutes.taskDetail,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
