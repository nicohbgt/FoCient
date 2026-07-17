import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';

import '../text_field/text_field.dart';

import 'search_variant.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    required this.controller,
    this.hintText = 'Search...',
    this.variant = SearchVariant.outlined,
    this.onChanged,
    this.onSubmitted,
    this.onClear,
  });

  final TextEditingController controller;

  final String hintText;

  final SearchVariant variant;

  final ValueChanged<String>? onChanged;

  final ValueChanged<String>? onSubmitted;

  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: controller,
      hintText: hintText,
      prefixIcon: const Icon(
        Icons.search,
      ),
      suffixIcon: controller.text.isEmpty
          ? null
          : IconButton(
              icon: const Icon(
                Icons.close,
              ),
              color: AppColors.neutral.c500,
              onPressed: () {
                controller.clear();

                onClear?.call();

                onChanged?.call('');
              },
            ),
      onChanged: onChanged,
    );
  }
}
