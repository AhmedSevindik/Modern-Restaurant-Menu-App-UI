import 'package:flutter/material.dart';

import 'package:menu_verse/theme/colors.dart';
import 'package:menu_verse/theme/spacing.dart';
import 'package:menu_verse/theme/text_styles.dart';

/// ===========================================================
/// PRIMARY BUTTON
/// ===========================================================
///
/// Ana aksiyon button’u.
///
/// Kullanım:
/// - checkout
/// - login
/// - reserve
/// - add to cart
///
/// ===========================================================

class PrimaryButton extends StatelessWidget {
  final String text;

  final VoidCallback? onPressed;

  final bool isLoading;

  final IconData? icon;

  final bool isExpanded;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
    this.isExpanded = true,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDisabled =
        onPressed == null || isLoading;

    return SizedBox(
      width: isExpanded ? double.infinity : null,
      height: 58,

      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,

        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,

          disabledBackgroundColor:
          AppColors.primary.withOpacity(0.5),

          foregroundColor: Colors.white,

          elevation: 0,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppSpacing.radiusLg,
            ),
          ),
        ),

        child: AnimatedSwitcher(
          duration: const Duration(
            milliseconds: 250,
          ),

          child: isLoading
              ? const SizedBox(
            width: 22,
            height: 22,

            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2.5,
            ),
          )
              : Row(
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
                style: AppTextStyles.buttonLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}