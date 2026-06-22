import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

  static const DisplayTypography display = DisplayTypography();
  static const HeadlineTypography headline = HeadlineTypography();
  static const TitleTypography title = TitleTypography();
  static const BodyTypography body = BodyTypography();
  static const LabelTypography label = LabelTypography();
}

class DisplayTypography {
  const DisplayTypography();

  final TextStyle large = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 56 / 48,
  );

  final TextStyle medium = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 40,
    fontWeight: FontWeight.w700,
    height: 48 / 40,
  );

  final TextStyle small = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 40 / 32,
  );
}

class HeadlineTypography {
  const HeadlineTypography();

  final TextStyle large = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 36 / 28,
  );

  final TextStyle medium = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 32 / 24,
  );

  final TextStyle small = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 28 / 20,
  );
}

class TitleTypography {
  const TitleTypography();

  final TextStyle large = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 28 / 18,
  );

  final TextStyle medium = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 24 / 16,
  );

  final TextStyle small = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
  );
}

class BodyTypography {
  const BodyTypography();

  final TextStyle large = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 24 / 16,
  );

  final TextStyle medium = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
  );

  final TextStyle small = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 18 / 12,
  );
}

class LabelTypography {
  const LabelTypography();

  final TextStyle large = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
  );

  final TextStyle medium = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 16 / 12,
  );

  final TextStyle small = const TextStyle(
    fontFamily: 'Inter',
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 16 / 11,
  );
}
