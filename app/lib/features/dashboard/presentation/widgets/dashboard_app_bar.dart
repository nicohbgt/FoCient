import 'package:flutter/material.dart';

import '../../../../app/design system/tokens/spacing/app_spacing.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
    this.onNotificationPressed,
    this.onProfilePressed,
    this.logo,
  });

  final VoidCallback? onNotificationPressed;
  final VoidCallback? onProfilePressed;

  final Widget? logo;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        height: preferredSize.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),
          child: Row(
            children: [
              Expanded(
                child: logo ??
                    const Text(
                      'FoCient',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
              ),
              IconButton(
                onPressed: onNotificationPressed,
                icon: const Icon(
                  Icons.notifications_none_outlined,
                ),
              ),
              IconButton(
                onPressed: onProfilePressed,
                icon: const Icon(
                  Icons.person_outline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}
