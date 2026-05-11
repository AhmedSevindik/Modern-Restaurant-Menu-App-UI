import 'package:flutter/material.dart';

import 'package:menu_verse/theme/colors.dart';
import 'package:menu_verse/theme/spacing.dart';

/// ===========================================================
/// CUSTOM ICON BUTTON
/// ===========================================================
///
/// Reusable icon button.
///
/// ===========================================================

class CustomIconButton extends StatelessWidget {
  final IconData icon;

  final VoidCallback onPressed;

  final Color? backgroundColor;

  final Color? iconColor;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor ?? AppColors.surface,

      borderRadius: BorderRadius.circular(
        AppSpacing.radiusMd,
      ),

      child: InkWell(
        borderRadius: BorderRadius.circular(
          AppSpacing.radiusMd,
        ),

        onTap: onPressed,

        child: Container(
          width: 52,
          height: 52,

          alignment: Alignment.center,

          child: Icon(
            icon,
            color: iconColor ?? AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}