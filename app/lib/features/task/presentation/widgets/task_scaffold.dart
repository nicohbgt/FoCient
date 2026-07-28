import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/colors/app_colors.dart';
import '../../../../app/design system/tokens/spacing/app_spacing.dart';
import '../../../../app/design system/tokens/typography/app_typography.dart';

class TaskScaffold extends StatelessWidget {
  const TaskScaffold({
    super.key,
    required this.title,
    required this.child,
    this.floatingActionButton,
  });

  final String title;
  final Widget child;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral.c50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.neutral.c50,
        foregroundColor: AppColors.neutral.c900,
        centerTitle: false,
        title: Text(
          title,
          style: AppTypography.headingMedium,
        ),
      ),
      floatingActionButton: floatingActionButton,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xl,
          ),
          child: child,
        ),
      ),
    );
  }
}
