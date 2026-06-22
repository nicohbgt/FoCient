import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const PrimaryColors primary = PrimaryColors();
  static const SecondaryColors secondary = SecondaryColors();
  static const AccentColors accent = AccentColors();
  static const NeutralColors neutral = NeutralColors();
  static const SuccessColors success = SuccessColors();
  static const WarningColors warning = WarningColors();
  static const ErrorColors error = ErrorColors();
  static const InfoColors info = InfoColors();
}

class PrimaryColors {
  const PrimaryColors();

  final Color c50 = const Color(0xFFEFF6FF);
  final Color c100 = const Color(0xFFDBEAFE);
  final Color c300 = const Color(0xFF93C5FD);
  final Color c500 = const Color(0xFF3B82F6);
  final Color c600 = const Color(0xFF2563EB);
  final Color c700 = const Color(0xFF1D4ED8);
  final Color c900 = const Color(0xFF172554);
}

class SecondaryColors {
  const SecondaryColors();

  final Color c100 = const Color(0xFFEDE9FE);
  final Color c500 = const Color(0xFF8B5CF6);
  final Color c700 = const Color(0xFF6D28D9);
}

class AccentColors {
  const AccentColors();

  final Color c500 = const Color(0xFF06B6D4);
  final Color c700 = const Color(0xFF0F766E);
}

class NeutralColors {
  const NeutralColors();

  final Color c0 = const Color(0xFFFFFFFF);

  final Color c50 = const Color(0xFFF8FAFC);
  final Color c100 = const Color(0xFFF1F5F9);
  final Color c200 = const Color(0xFFE2E8F0);
  final Color c300 = const Color(0xFFCBD5E1);
  final Color c400 = const Color(0xFF94A3B8);
  final Color c500 = const Color(0xFF64748B);
  final Color c600 = const Color(0xFF475569);
  final Color c700 = const Color(0xFF334155);
  final Color c800 = const Color(0xFF1E293B);
  final Color c900 = const Color(0xFF0F172A);
}

class SuccessColors {
  const SuccessColors();

  final Color c100 = const Color(0xFFDCFCE7);
  final Color c500 = const Color(0xFF22C55E);
  final Color c700 = const Color(0xFF15803D);
}

class WarningColors {
  const WarningColors();

  final Color c100 = const Color(0xFFFEF3C7);
  final Color c500 = const Color(0xFFF59E0B);
  final Color c700 = const Color(0xFFB45309);
}

class ErrorColors {
  const ErrorColors();

  final Color c100 = const Color(0xFFFEE2E2);
  final Color c500 = const Color(0xFFEF4444);
  final Color c700 = const Color(0xFFB91C1C);
}

class InfoColors {
  const InfoColors();

  final Color c100 = const Color(0xFFE0F2FE);
  final Color c500 = const Color(0xFF0EA5E9);
  final Color c700 = const Color(0xFF0369A1);
}
