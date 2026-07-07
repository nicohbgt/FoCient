class AppRoutes {
  AppRoutes._();

  // Authentication
  static const welcome = '/';
  static const signUp = '/sign-up';
  static const signIn = '/sign-in';

  static const forgotPassword = '/forgot-password';
  static const resetPassword = '/reset-password';
  static const resetSuccess = '/reset-success';

  // Onboarding
  static const chooseWorkstyle = '/choose-workstyle';
  static const setupGoals = '/setup-goals';
  static const goalForm = '/goal-form';
  static const setupTimeAllocation = '/setup-time-allocation';
  static const scheduleGeneration = '/schedule-generation';

  // Dashboard
  static const dashboard = '/dashboard';

  // Task
  static const taskList = '/tasks';
  static const createTask = '/tasks/create';
  static const taskDetail = '/tasks/detail';
  static const editTask = '/tasks/edit';

  // Analytics
  static const analytics = '/analytics';
}
