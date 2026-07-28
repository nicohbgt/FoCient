import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/router/app_routes.dart';
import '../../../../app/shared/widgets/button/app_button.dart';
import '../../../../app/shared/widgets/button/app_button_variant.dart';

import '../widgets/weekday_selector.dart';

// ---------------------------------------------------------------------------
// Model for an AI insight card
// ---------------------------------------------------------------------------
class _InsightData {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  const _InsightData(this.icon, this.iconColor, this.title, this.description);
}

// ---------------------------------------------------------------------------
// Page
// ---------------------------------------------------------------------------
class SetupTimeAllocationPage extends StatefulWidget {
  const SetupTimeAllocationPage({super.key});

  @override
  State<SetupTimeAllocationPage> createState() =>
      _SetupTimeAllocationPageState();
}

class _SetupTimeAllocationPageState extends State<SetupTimeAllocationPage> {
  // ── Selection state ──────────────────────────────────────────────────────
  final Set<String> _selectedDays = {};

  // Actual TimeOfDay values used for computation
  TimeOfDay _productiveStartTime = const TimeOfDay(hour: 9, minute: 0);
  TimeOfDay _productiveEndTime = const TimeOfDay(hour: 18, minute: 0);
  TimeOfDay _sleepingStartTime = const TimeOfDay(hour: 22, minute: 0);
  TimeOfDay _sleepingEndTime = const TimeOfDay(hour: 5, minute: 0);

  // Whether each field has been set by the user (or uses defaults)
  bool _sleepEndSet = false;

  // ── Helpers ─────────────────────────────────────────────────────────────

  /// Convert a TimeOfDay to a display string like "09:00 WIB (UTC+7)"
  String _formatTime(TimeOfDay t) {
    final h = t.hour.toString().padLeft(2, '0');
    final m = t.minute.toString().padLeft(2, '0');
    return '$h:$m WIB (UTC+7)';
  }

  /// Duration in hours between two TimeOfDay values (handles overnight).
  double _durationHours(TimeOfDay start, TimeOfDay end) {
    double startH = start.hour + start.minute / 60.0;
    double endH = end.hour + end.minute / 60.0;
    if (endH < startH) endH += 24; // overnight
    return endH - startH;
  }

  // ── Time picker ──────────────────────────────────────────────────────────
  Future<void> _showTimePicker(
    TimeOfDay initial,
    void Function(TimeOfDay picked) onConfirm,
  ) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: initial,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (picked == null) {
      return;
    }

    onConfirm(picked);
  }

  // ── AI Insight computation ───────────────────────────────────────────────
  List<_InsightData> get _computedInsights {
    final workHours = _durationHours(_productiveStartTime, _productiveEndTime);
    final sleepHours = _durationHours(_sleepingStartTime, _sleepingEndTime);
    final restHours = 24 - workHours;

    final insights = <_InsightData>[];

    // Achievable: 7–10 h work, ≥ 6 h sleep
    if (workHours >= 7 && workHours <= 10 && sleepHours >= 6) {
      insights.add(const _InsightData(
        Icons.check_circle_outline,
        Color(0xFF7C3AED),
        'Achievable',
        'Your habit are realistic to implement',
      ));
    }

    // Slow Living: rest time > work time  OR  work < 7 h
    if (restHours > workHours || workHours < 7) {
      insights.add(const _InsightData(
        Icons.self_improvement,
        Color(0xFF7C3AED),
        'Slow Living',
        'You have more rest time than average',
      ));
    }

    // Mindfulness: sleep is roughly 7 h (6.5 – 7.5)
    if (sleepHours >= 6.5 && sleepHours <= 7.5) {
      insights.add(_InsightData(
        Icons.psychology,
        Color(0xFF7C3AED),
        'Mindfulness',
        '${sleepHours.toStringAsFixed(0)} hours sleeping is good for recovery',
      ));
    }

    // Default fallback – always show something
    if (insights.isEmpty) {
      insights.add(const _InsightData(
        Icons.info_outline,
        Color(0xFF7C3AED),
        'Keep Going',
        'Adjust your hours to unlock personalised insights',
      ));
    }

    return insights;
  }

  // ── Build helpers ────────────────────────────────────────────────────────
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildTimeField(
    String text, {
    required VoidCallback onTap,
    bool isPlaceholder = false,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFCBD5E1), width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 14,
                    color: isPlaceholder
                        ? const Color(0xFF94A3B8)
                        : const Color(0xFF334155),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(Icons.access_time, size: 20, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInsightCard(_InsightData data) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E8FF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD8B4FE), width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(data.icon, color: data.iconColor, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  data.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF334155),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ── Build ────────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    final insights = _computedInsights;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          'Setup your time allocation',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // ── Productive Hour ─────────────────────────────
                    _buildSectionTitle('Productive Hour'),
                    Row(
                      children: [
                        _buildTimeField(
                          _formatTime(_productiveStartTime),
                          onTap: () => _showTimePicker(
                            _productiveStartTime,
                            (t) => setState(() => _productiveStartTime = t),
                          ),
                        ),
                        const SizedBox(width: 12),
                        _buildTimeField(
                          _formatTime(_productiveEndTime),
                          onTap: () => _showTimePicker(
                            _productiveEndTime,
                            (t) => setState(() => _productiveEndTime = t),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // ── Sleeping Hour ───────────────────────────────
                    _buildSectionTitle('Sleeping Hour'),
                    Row(
                      children: [
                        _buildTimeField(
                          _formatTime(_sleepingStartTime),
                          onTap: () => _showTimePicker(
                            _sleepingStartTime,
                            (t) => setState(() => _sleepingStartTime = t),
                          ),
                        ),
                        const SizedBox(width: 12),
                        _buildTimeField(
                          _sleepEndSet
                              ? _formatTime(_sleepingEndTime)
                              : 'End Hour',
                          isPlaceholder: !_sleepEndSet,
                          onTap: () => _showTimePicker(
                            _sleepingEndTime,
                            (t) => setState(() {
                              _sleepingEndTime = t;
                              _sleepEndSet = true;
                            }),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // ── Recovery Day ────────────────────────────────
                    _buildSectionTitle('Recovery Day'),
                    WeekdaySelector(
                      selectedDays: _selectedDays,
                      onToggle: (day) => setState(() {
                        if (_selectedDays.contains(day)) {
                          _selectedDays.remove(day);
                        } else {
                          _selectedDays.add(day);
                        }
                      }),
                    ),

                    const SizedBox(height: 12),

                    // ── AI Insights (computed from real state) ──────
                    _buildSectionTitle('AI Insights'),
                    ...insights.map(_buildInsightCard),

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: AppButton(
                text: 'Next',
                variant: AppButtonVariant.primary,
                onPressed: () => context.push(AppRoutes.scheduleGeneration),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
