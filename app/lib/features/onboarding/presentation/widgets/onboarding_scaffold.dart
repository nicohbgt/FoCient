import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';

class OnboardingScaffold extends StatelessWidget {
  const OnboardingScaffold({
    super.key,
    required this.header,
    required this.body,
    required this.buttonLabel,
    required this.onContinue,
    this.showBackButton = true,
    this.onBack,
  });

  final Widget header;
  final Widget body;

  final String buttonLabel;

  final VoidCallback onContinue;

  final bool showBackButton;

  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral.c0,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: showBackButton
            ? IconButton(
                onPressed: onBack ?? () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new),
              )
            : null,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s20),
          child: Column(
            children: [
              header,
              const SizedBox(
                height: AppSpacing.s24,
              ),
              Expanded(
                child: body,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.all(AppSpacing.s20),
        child: FilledButton(
          onPressed: onContinue,
          child: Text(buttonLabel),
        ),
      ),
    );
  }
}
