import 'package:go_router/go_router.dart';

import 'app_routes.dart';

import '../../features/auth/presentation/pages/sign_in_page.dart';
import '../../features/auth/presentation/pages/sign_up_page.dart';
import '../../features/auth/presentation/pages/forgot_password_page.dart';
import '../../features/auth/presentation/pages/reset_password_page.dart';
import '../../features/auth/presentation/pages/reset_success_page.dart';

import '../../features/onboarding/presentation/pages/welcome_page.dart';
import '../../features/onboarding/presentation/pages/setup_goal_page.dart';
import '../../features/onboarding/presentation/pages/goal_form_page.dart';
import '../../features/onboarding/presentation/pages/choose_workstyle_page.dart';
import '../../features/onboarding/presentation/pages/setup_time_allocation_page.dart';
import '../../features/onboarding/presentation/pages/schedule_generation_page.dart';

import '../../features/dashboard/presentation/pages/dashboard_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.welcome,
    routes: [
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
      GoRoute(
        path: AppRoutes.dashboard,
        builder: (context, state) => const DashboardPage(),
      ),
    ],
  );
}
