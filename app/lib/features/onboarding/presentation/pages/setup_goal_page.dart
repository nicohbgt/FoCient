import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/theme/app_spacing.dart';

import '../widgets/onboarding_header.dart';
import '../widgets/onboarding_scaffold.dart';
import '../widgets/goal_card.dart';

class SetupGoalsPage extends StatelessWidget {
  const SetupGoalsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      header: const OnboardingHeader(
        currentStep: 1,
        totalSteps: 4,
        title: 'Set Your Goals',
        subtitle:
            'Add your productivity goals to help FoCient generate a personalized schedule.',
      ),
      body: Column(
        children: [
          GoalCard(
            title: 'Learn Flutter',
            category: 'Learning',
            priority: 'High',
            onTap: () {},
          ),
          const SizedBox(
            height: AppSpacing.s16,
          ),
          GoalCard(
            title: 'Exercise',
            category: 'Health',
            priority: 'Medium',
            onTap: () {},
          ),
          const SizedBox(
            height: AppSpacing.s16,
          ),
          OutlinedButton.icon(
            onPressed: () {
              context.go(
                AppRoutes.goalForm,
              );
            },
            icon: const Icon(Icons.add),
            label: const Text(
              'Add Goal',
            ),
          ),
        ],
      ),
      buttonLabel: 'Continue',
      onContinue: () {
        context.go(
          AppRoutes.chooseWorkstyle,
        );
      },
    );
  }
}
