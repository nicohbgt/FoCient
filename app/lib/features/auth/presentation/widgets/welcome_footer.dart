import 'package:flutter/material.dart';

class WelcomeFooter extends StatelessWidget {
  const WelcomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text.rich(
          TextSpan(
            style: textTheme.bodySmall,
            children: [
              const TextSpan(
                text: 'By signing up for delight, you agree to our ',
              ),
              TextSpan(
                text: 'Term of Service.',
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(
            style: textTheme.bodySmall,
            children: [
              const TextSpan(
                text: 'Learn how we process your data in our ',
              ),
              TextSpan(
                text: 'Privacy Policy.',
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
