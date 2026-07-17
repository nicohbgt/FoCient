import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../../../../shared/widgets/badge/badge_variant.dart';

import '../widgets/card/goal_card.dart';
import '../widgets/list/goal_list.dart';
import '../widgets/onboarding_header.dart';
import '../widgets/onboarding_scaffold.dart';

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
      body: GoalList(
        itemCount: 2,
        onAddGoal: () {
          context.go(
            AppRoutes.goalForm,
          );
        },
        itemBuilder: (context, index) {
          if (index == 0) {
            return GoalCard(
              title: 'Learn Flutter',
              description: 'Build FoCient using Flutter.',
              priorityLabel: 'High',
              priorityVariant: BadgeVariant.error,
              deadline: '31 Dec 2026',
              onTap: () {},
              onEdit: () {},
              onDelete: () {},
            );
          }

          return GoalCard(
            title: 'Exercise',
            description: 'Exercise three times a week.',
            priorityLabel: 'Medium',
            priorityVariant: BadgeVariant.warning,
            deadline: '30 Nov 2026',
            onTap: () {},
            onEdit: () {},
            onDelete: () {},
          );
        },
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
