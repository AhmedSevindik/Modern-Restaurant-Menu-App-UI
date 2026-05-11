import 'package:flutter/material.dart';

/// Theme
import 'package:menu_verse/theme/colors.dart';
import 'package:menu_verse/theme/spacing.dart';
import 'package:menu_verse/theme/text_styles.dart';

/// ===========================================================
/// CUSTOM TEXT FIELD
/// ===========================================================
///
/// Reusable text field component.
///
/// Kullanım alanları:
/// - Login
/// - Register
/// - Search
/// - Payment
/// - Reservation
///
/// Amaç:
/// - tekrar eden kodu azaltmak
/// - tutarlı input sistemi oluşturmak
/// - merkezi kontrol sağlamak
///
/// ===========================================================

class CustomTextField extends StatelessWidget {
  /// Input controller
  final TextEditingController? controller;

  /// Hint text
  final String hintText;

  /// Label text
  final String? label;

  /// Prefix icon
  final IconData? prefixIcon;

  /// Suffix icon
  final IconData? suffixIcon;

  /// Password field kontrolü
  final bool obscureText;

  /// Enabled kontrolü
  final bool enabled;

  /// Keyboard type
  final TextInputType keyboardType;

  /// Validation
  final String? Function(String?)? validator;

  /// Text change callback
  final Function(String)? onChanged;

  /// Tap callback
  final VoidCallback? onTap;

  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        // =====================================================
        // LABEL
        // =====================================================

        if (label != null) ...[
          Text(
            label!,
            style: AppTextStyles.labelLarge,
          ),

          const SizedBox(height: AppSpacing.sm),
        ],

        // =====================================================
        // TEXT FIELD
        // =====================================================

        TextFormField(
          controller: controller,

          obscureText: obscureText,

          enabled: enabled,

          keyboardType: keyboardType,

          validator: validator,

          onChanged: onChanged,

          onTap: onTap,

          style: AppTextStyles.bodyMedium,

          cursorColor: AppColors.primary,

          decoration: InputDecoration(
            hintText: hintText,

            hintStyle: AppTextStyles.bodySmall,

            // ===============================================
            // PREFIX ICON
            // ===============================================

            prefixIcon: prefixIcon != null
                ? Icon(
              prefixIcon,
              color: AppColors.textSecondary,
            )
                : null,

            // ===============================================
            // SUFFIX ICON
            // ===============================================

            suffixIcon: suffixIcon != null
                ? Icon(
              suffixIcon,
              color: AppColors.textSecondary,
            )
                : null,
          ),
        ),
      ],
    );
  }
}