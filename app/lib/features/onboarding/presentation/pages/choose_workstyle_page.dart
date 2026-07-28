import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/shared/widgets/button/app_button.dart';
import '../../../../app/shared/widgets/button/app_button_variant.dart';

import '../widgets/workstyle_card.dart';

class ChooseWorkstylePage extends StatefulWidget {
  const ChooseWorkstylePage({super.key});

  @override
  State<ChooseWorkstylePage> createState() => _ChooseWorkstylePageState();
}

class _ChooseWorkstylePageState extends State<ChooseWorkstylePage> {
  int selected = 1; // Default to Normal (1)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          'Choose your workstyle',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),
              WorkStyleCard(
                title: 'Conservative',
                description: 'More caution with scheduling',
                imageWidget:
                    const Icon(Icons.shield, color: Colors.grey, size: 28),
                selected: selected == 0,
                onTap: () {
                  setState(() {
                    selected = 0;
                  });
                },
              ),
              const SizedBox(height: 16),
              WorkStyleCard(
                title: 'Normal',
                description: 'Balance between work and rest',
                imageWidget:
                    const Icon(Icons.balance, color: Colors.grey, size: 28),
                selected: selected == 1,
                onTap: () {
                  setState(() {
                    selected = 1;
                  });
                },
              ),
              const SizedBox(height: 16),
              WorkStyleCard(
                title: 'Aggressive',
                description: 'More work, less rest for great result',
                imageWidget:
                    const Icon(Icons.bolt, color: Colors.grey, size: 28),
                selected: selected == 2,
                onTap: () {
                  setState(() {
                    selected = 2;
                  });
                },
              ),
              const Spacer(),
              AppButton(
                text: 'Next',
                variant: AppButtonVariant.primary,
                onPressed: () {
                  context.push(AppRoutes.setupTimeAllocation);
                },
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
