import 'package:flutter/material.dart';
import 'colors.dart';

/// ===========================================================
/// APP TEXT STYLES
/// ===========================================================
///
/// Typography sistemi uygulamanın okunabilirliğini belirler.
///
/// Yeni başlayanların büyük hatası:
/// - Her yerde farklı font size kullanmak
/// - Rastgele fontWeight seçmek
/// - Typography hierarchy oluşturmamak
///
/// Sonuç:
/// Kullanıcı nereye bakacağını anlayamaz.
///
/// Bu dosya:
/// - tutarlı typography sistemi sağlar
/// - tekrar eden kodu azaltır
/// - profesyonel görünüm oluşturur
/// ===========================================================

class AppTextStyles {
  AppTextStyles._();

  // =========================================================
  // DISPLAY STYLES
  // =========================================================
  //
  // Büyük başlıklar için.
  //
  // =========================================================

  static const TextStyle displayLarge = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  static const TextStyle displayMedium = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  // =========================================================
  // HEADINGS
  // =========================================================

  static const TextStyle heading1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 1.4,
  );

  // =========================================================
  // BODY TEXT
  // =========================================================
  //
  // Kullanıcının en çok okuyacağı alanlar.
  // O yüzden okunabilirlik kritik.
  //
  // =========================================================

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.5,
  );

  // =========================================================
  // BUTTON TEXT
  // =========================================================

  static const TextStyle buttonLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle buttonMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  // =========================================================
  // LABELS
  // =========================================================

  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  // =========================================================
  // PRICE TEXT
  // =========================================================
  //
  // Restaurant app olduğu için fiyatlar önemli.
  // Fiyatlar dikkat çekmeli.
  //
  // =========================================================

  static const TextStyle priceLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static const TextStyle priceMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  // =========================================================
  // CAPTION / HINT
  // =========================================================

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
    height: 1.4,
  );
}