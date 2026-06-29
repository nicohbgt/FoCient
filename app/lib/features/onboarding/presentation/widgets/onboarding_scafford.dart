import 'package:flutter/material.dart';

import '../../../../app/theme/app_spacing.dart';

import '../../../../shared/widgets/app_button.dart';

class OnboardingScaffold extends StatelessWidget {
  const OnboardingScaffold({
    super.key,
    required this.header,
    required this.body,
    required this.buttonLabel,
    required this.onContinue,
    this.secondaryButtonLabel,
    this.onSecondaryPressed,
    this.isLoading = false,
    this.canContinue = true,
    this.padding = const EdgeInsets.all(AppSpacing.s24),
  });

  final Widget header;
  final Widget body;

  final String buttonLabel;
  final VoidCallback onContinue;

  final String? secondaryButtonLabel;
  final VoidCallback? onSecondaryPressed;

  final bool isLoading;
  final bool canContinue;

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: padding,
          child: Column(
            children: [
              header,
              const SizedBox(
                height: AppSpacing.s24,
              ),
              Expanded(
                child: body,
              ),
              const SizedBox(
                height: AppSpacing.s24,
              ),
              if (secondaryButtonLabel != null) ...[
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: onSecondaryPressed,
                    child: Text(
                      secondaryButtonLabel!,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSpacing.s12,
                ),
              ],
              AppButton(
                label: buttonLabel,
                fullWidth: true,
                isLoading: isLoading,
                onPressed: canContinue ? onContinue : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
