import 'package:flutter/material.dart';

import 'package:menu_verse/theme/colors.dart';
import 'package:menu_verse/theme/text_styles.dart';

/// ===========================================================
/// CUSTOM APP BAR
/// ===========================================================
///
/// Reusable AppBar sistemi.
///
/// ===========================================================

class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  final List<Widget>? actions;

  final Widget? leading;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,

      elevation: 0,

      centerTitle: false,

      title: Text(
        title,
        style: AppTextStyles.heading3,
      ),

      leading: leading,

      actions: actions,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight);
}