import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/shared/widgets/button/app_button.dart';
import '../../../../app/shared/widgets/button/app_button_variant.dart';
import '../../domain/entities/goal.dart';
import '../providers/goals_provider.dart';

class SetupGoalsPage extends ConsumerWidget {
  const SetupGoalsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goals = ref.watch(goalsProvider);

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
          'Setup your goals',
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

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // List of Added Goals
                      ...goals.map((goal) {
                        String priorityLabel = 'Medium';
                        Color priorityColor = const Color(0xFFD97706);
                        Color priorityBg = const Color(0xFFFFF7E6);

                        if (goal.priority == GoalPriority.low) {
                          priorityLabel = 'Low';
                          priorityColor = const Color(0xFF16A34A);
                          priorityBg = const Color(0xFFDCFCE7);
                        } else if (goal.priority == GoalPriority.high) {
                          priorityLabel = 'High';
                          priorityColor = const Color(0xFFDC2626);
                          priorityBg = const Color(0xFFFEE2E2);
                        }

                        // Date formatter
                        final dateLabel = goal.deadline != null
                            ? DateFormat('MMM, d yyyy').format(goal.deadline!)
                            : 'No deadline';

                        return Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0F5FF),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFFCBD5E1)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                goal.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: priorityBg,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      priorityLabel,
                                      style: TextStyle(
                                        color: priorityColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 6),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE0F2FE),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      dateLabel,
                                      style: const TextStyle(
                                        color: Color(0xFF0369A1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (goal.description.isNotEmpty) ...[
                                const SizedBox(height: 16),
                                Text(
                                  goal.description,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF334155),
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        );
                      }),

                      // Add Goals Card
                      GestureDetector(
                        onTap: () {
                          context.push(AppRoutes.goalForm);
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0F5FF),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFFCBD5E1)),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Add Goals',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Tell us what is your dream',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF334155),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'We\'ll create an action plan for you',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF334155),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),

              // Next Button
              AppButton(
                text: 'Next',
                variant: AppButtonVariant.primary,
                onPressed: () {
                  context.push(AppRoutes.chooseWorkstyle);
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
