import 'package:flutter/material.dart';

import 'package:menu_verse/theme/colors.dart';
import 'package:menu_verse/theme/spacing.dart';
import 'package:menu_verse/theme/text_styles.dart';

/// ===========================================================
/// SECONDARY BUTTON
/// ===========================================================
///
/// Daha düşük öncelikli aksiyonlar için.
///
/// Örn:
/// - cancel
/// - back
/// - save later
///
/// ===========================================================

class SecondaryButton extends StatelessWidget {
  final String text;

  final VoidCallback? onPressed;

  final IconData? icon;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58,

      child: ElevatedButton(
        onPressed: onPressed,

        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.surface,

          foregroundColor: AppColors.textPrimary,

          elevation: 0,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppSpacing.radiusLg,
            ),

            side: const BorderSide(
              color: AppColors.border,
            ),
          ),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,

          children: [
            if (icon != null) ...[
              Icon(icon),

              const SizedBox(
                width: AppSpacing.sm,
              ),
            ],

            Text(
              text,
              style: AppTextStyles.buttonLarge.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}