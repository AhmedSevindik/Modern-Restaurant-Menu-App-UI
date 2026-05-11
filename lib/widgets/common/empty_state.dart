import 'package:flutter/material.dart';

import 'package:menu_verse/theme/colors.dart';
import 'package:menu_verse/theme/spacing.dart';
import 'package:menu_verse/theme/text_styles.dart';

/// ===========================================================
/// EMPTY STATE
/// ===========================================================
///
/// Veri olmadığında gösterilen reusable widget.
///
/// Örn:
/// - Empty cart
/// - No favorites
/// - No orders
///
/// ===========================================================

class EmptyState extends StatelessWidget {
  final IconData icon;

  final String title;

  final String subtitle;

  const EmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(
          AppSpacing.xl,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // =================================================
            // ICON
            // =================================================

            Icon(
              icon,
              size: 72,
              color: AppColors.textHint,
            ),

            const SizedBox(height: AppSpacing.lg),

            // =================================================
            // TITLE
            // =================================================

            Text(
              title,
              style: AppTextStyles.heading3,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: AppSpacing.sm),

            // =================================================
            // SUBTITLE
            // =================================================

            Text(
              subtitle,
              style: AppTextStyles.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}