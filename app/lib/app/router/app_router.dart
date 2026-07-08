import 'package:go_router/go_router.dart';

import 'app_routes.dart';

import '../../features/auth/presentation/pages/sign_in_page.dart';
import '../../features/auth/presentation/pages/sign_up_page.dart';
import '../../features/auth/presentation/pages/forgot_password_page.dart';
import '../../features/auth/presentation/pages/reset_password_page.dart';
import '../../features/auth/presentation/pages/reset_success_page.dart';
import '../../features/auth/presentation/pages/welcome_page.dart';

import '../../features/onboarding/presentation/pages/setup_goal_page.dart';
import '../../features/onboarding/presentation/pages/goal_form_page.dart';
import '../../features/onboarding/presentation/pages/choose_workstyle_page.dart';
import '../../features/onboarding/presentation/pages/setup_time_allocation_page.dart';
import '../../features/onboarding/presentation/pages/schedule_generation_page.dart';

import '../../features/dashboard/presentation/pages/dashboard_home_page.dart';

import '../../features/task/domain/entities/task.dart';

import '../../features/task/presentation/pages/task_list_page.dart';
import '../../features/task/presentation/pages/create_task_page.dart';
import '../../features/task/presentation/pages/edit_task_page.dart';
import '../../features/task/presentation/pages/task_detail_page.dart';

import '../../features/analytics/presentation/pages/analytics_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.welcome,
    routes: [
      // Authentication
      GoRoute(
        path: AppRoutes.welcome,
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: AppRoutes.signIn,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        builder: (context, state) => const ForgotPasswordPage(),
      ),
      GoRoute(
        path: AppRoutes.resetPassword,
        builder: (context, state) => const ResetPasswordPage(),
      ),
      GoRoute(
        path: AppRoutes.resetSuccess,
        builder: (context, state) => const ResetSuccessPage(),
      ),

      // Onboarding
      GoRoute(
        path: AppRoutes.setupGoals,
        builder: (context, state) => const SetupGoalsPage(),
      ),
      GoRoute(
        path: AppRoutes.goalForm,
        builder: (context, state) => const GoalFormPage(),
      ),
      GoRoute(
        path: AppRoutes.chooseWorkstyle,
        builder: (context, state) => const ChooseWorkstylePage(),
      ),
      GoRoute(
        path: AppRoutes.setupTimeAllocation,
        builder: (context, state) => const SetupTimeAllocationPage(),
      ),
      GoRoute(
        path: AppRoutes.scheduleGeneration,
        builder: (context, state) => const ScheduleGenerationPage(),
      ),

      // Dashboard
      GoRoute(
        path: AppRoutes.dashboard,
        builder: (context, state) => const DashboardHomePage(),
      ),

      // Tasks
      GoRoute(
        path: AppRoutes.taskList,
        builder: (context, state) => const TaskListPage(),
      ),
      GoRoute(
        path: AppRoutes.createTask,
        builder: (context, state) => const CreateTaskPage(),
      ),
      GoRoute(
        path: AppRoutes.taskDetail,
        builder: (context, state) {
          final task = state.extra as Task;

          return TaskDetailPage(
            task: task,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.editTask,
        builder: (context, state) {
          final task = state.extra as Task;

          return EditTaskPage(
            task: task,
          );
        },
      ),

      // Analytics
      GoRoute(
        path: AppRoutes.analytics,
        builder: (context, state) => const AnalyticsPage(),
      ),
    ],
  );
}
