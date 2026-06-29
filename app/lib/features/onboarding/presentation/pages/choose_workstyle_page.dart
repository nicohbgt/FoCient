import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';

import '../widgets/onboarding_header.dart';
import '../widgets/onboarding_scaffold.dart';
import '../widgets/workstyle_card.dart';

class ChooseWorkstylePage extends StatefulWidget {
  const ChooseWorkstylePage({
    super.key,
  });

  @override
  State<ChooseWorkstylePage> createState() => _ChooseWorkstylePageState();
}

class _ChooseWorkstylePageState extends State<ChooseWorkstylePage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      header: const OnboardingHeader(
        currentStep: 2,
        totalSteps: 4,
        title: 'Choose Your Work Style',
        subtitle: 'Select the work style that best describes you.',
      ),
      body: ListView(
        children: [
          WorkStyleCard(
            title: 'Deep Focus',
            description:
                'Prefer long uninterrupted sessions with minimal distractions.',
            icon: Icons.psychology,
            selected: selected == 0,
            onTap: () {
              setState(() {
                selected = 0;
              });
            },
          ),
          const SizedBox(height: 16),
          WorkStyleCard(
            title: 'Balanced',
            description: 'Mix focused work sessions with regular breaks.',
            icon: Icons.balance,
            selected: selected == 1,
            onTap: () {
              setState(() {
                selected = 1;
              });
            },
          ),
          const SizedBox(height: 16),
          WorkStyleCard(
            title: 'Flexible',
            description:
                'Adapt your schedule dynamically based on your workload.',
            icon: Icons.auto_awesome,
            selected: selected == 2,
            onTap: () {
              setState(() {
                selected = 2;
              });
            },
          ),
        ],
      ),
      buttonLabel: 'Continue',
      onContinue: () {
        context.go(
          AppRoutes.setupTimeAllocation,
        );
      },
    );
  }
}
