import 'package:flutter/material.dart';

class WelcomeLogo extends StatelessWidget {
  const WelcomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          'FoCient',
          style: textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 16),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 320,
          ),
          child: Text(
            'Make you keep productive without feel overwhelmed and overload',
            textAlign: TextAlign.center,
            style: textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
