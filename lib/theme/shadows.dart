import 'package:flutter/material.dart';
import 'colors.dart';

/// ===========================================================
/// APP SHADOWS
/// ===========================================================
///
/// Shadow sistemi depth hissi verir.
///
/// Fazla shadow:
/// - eski görünür
/// - kirli görünür
/// - Android 2016 hissi verir
///
/// Modern UI:
/// hafif shadow kullanır.
/// ===========================================================

class AppShadows {
  AppShadows._();

  static List<BoxShadow> soft = [
    BoxShadow(
      color: AppColors.shadow,
      blurRadius: 10,
      offset: const Offset(0, 4),
    ),
  ];

  static List<BoxShadow> medium = [
    BoxShadow(
      color: AppColors.shadow.withOpacity(0.25),
      blurRadius: 20,
      offset: const Offset(0, 8),
    ),
  ];

  static List<BoxShadow> large = [
    BoxShadow(
      color: AppColors.shadow.withOpacity(0.30),
      blurRadius: 30,
      offset: const Offset(0, 12),
    ),
  ];
}