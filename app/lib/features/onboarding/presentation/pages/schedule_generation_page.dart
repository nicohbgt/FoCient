import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class ScheduleGenerationPage extends StatefulWidget {
  const ScheduleGenerationPage({
    super.key,
  });

  @override
  State<ScheduleGenerationPage> createState() => _ScheduleGenerationPageState();
}

class _ScheduleGenerationPageState extends State<ScheduleGenerationPage> {
  double progress = 0;

  String status = "Preparing AI...";

  @override
  void initState() {
    super.initState();

    _simulateGeneration();
  }

  Future<void> _simulateGeneration() async {
    final steps = [
      ("Analyzing Goals...", 0.25),
      ("Understanding Work Style...", 0.50),
      ("Calculating Available Time...", 0.75),
      ("Generating Your Schedule...", 1.0),
    ];

    for (final step in steps) {
      await Future.delayed(
        const Duration(seconds: 1),
      );

      if (!mounted) return;

      setState(() {
        status = step.$1;

        progress = step.$2;
      });
    }

    await Future.delayed(
      const Duration(milliseconds: 700),
    );

    if (!mounted) return;

    context.go(
      AppRoutes.dashboard,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            AppSpacing.s24,
          ),
          child: Column(
            children: [
              const Spacer(),
              Icon(
                Icons.auto_awesome,
                size: 120,
                color: AppColors.primary.c500,
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
              Text(
                "Generating Your Schedule",
                textAlign: TextAlign.center,
                style: AppTypography.headline.headlineMedium,
              ),
              const SizedBox(
                height: AppSpacing.s12,
              ),
              Text(
                "FoCient is creating a personalized schedule based on your goals and preferences.",
                textAlign: TextAlign.center,
                style: AppTypography.body.bodyMedium.copyWith(
                  color: AppColors.neutral.c500,
                ),
              ),
              const SizedBox(
                height: AppSpacing.s40,
              ),
              LinearProgressIndicator(
                value: progress,
                minHeight: 8,
              ),
              const SizedBox(
                height: AppSpacing.s12,
              ),
              Text(
                status,
                style: AppTypography.label.labelMedium,
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(
                  AppSpacing.s16,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.c50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.lightbulb,
                      color: AppColors.warning.c500,
                    ),
                    const SizedBox(
                      width: AppSpacing.s12,
                    ),
                    Expanded(
                      child: Text(
                        "Tip: Breaking large goals into smaller tasks increases the likelihood of completion.",
                        style: AppTypography.body.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSpacing.s32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
