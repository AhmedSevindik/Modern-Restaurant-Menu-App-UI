import 'package:flutter/material.dart';

/// ===========================================================
/// APP COLORS
/// ===========================================================
///
/// Bu dosya uygulamadaki TÜM renklerin merkezi.
/// Amaç:
/// - Hardcoded renk kullanımını engellemek
/// - Tutarlı bir tasarım sistemi kurmak
/// - Dark mode yönetimini kolaylaştırmak
/// - Component’leri tekrar kullanılabilir yapmak
///
/// Kötü örnek:
/// Color(0xFFFF6B35)
///
/// İyi örnek:
/// AppColors.primary
///
/// Çünkü 6 ay sonra o rengin neden seçildiğini kimse hatırlamaz.
/// Kapanıp açılınca her şey gidiyor.
/// ===========================================================

class AppColors {
  AppColors._();

  // =========================================================
  // PRIMARY BRAND COLORS
  // =========================================================
  //
  // Uygulamanın ana marka rengi.
  // CTA buttonlar, aktif elementler ve vurgu alanlarında kullanılır.
  //
  // Restaurant uygulamalarında sıcak tonlar:
  // - iştah hissi verir
  // - enerji hissi oluşturur
  // - kullanıcı dikkatini çeker
  //
  // =========================================================

  /// Ana marka rengi
  static const Color primary = Color(0xFFFF6B35);

  /// Hover / açık ton
  static const Color primaryLight = Color(0xFFFF9B73);

  /// Pressed / koyu ton
  static const Color primaryDark = Color(0xFFE85A24);

  /// Çok açık arka plan tonu
  static const Color primarySoft = Color(0xFFFFE5DC);

  // =========================================================
  // BACKGROUND COLORS
  // =========================================================
  //
  // Dark theme için saf siyah (#000000) kullanmıyoruz.
  //
  // Sebep:
  // - göz yorar
  // - premium görünmez
  // - contrast sertleşir
  //
  // Modern uygulamalar hafif gri tonlu koyu arka plan kullanır.
  //
  // =========================================================

  /// Ana uygulama arka planı
  static const Color background = Color(0xFF0F0F0F);

  /// Secondary background
  static const Color backgroundSecondary = Color(0xFF18181B);

  // =========================================================
  // SURFACE COLORS
  // =========================================================
  //
  // Kartlar, modal'lar ve container alanları için.
  //
  // Background ile aynı renk olursa:
  // - UI düz görünür
  // - hierarchy kaybolur
  //
  // =========================================================

  /// Kart arka planı
  static const Color card = Color(0xFF1C1C1E);

  /// Hafif daha açık yüzey
  static const Color surface = Color(0xFF252529);

  /// Modal / bottom sheet
  static const Color modal = Color(0xFF2C2C2E);

  // =========================================================
  // BORDER COLORS
  // =========================================================
  //
  // Component sınırlarını ayırmak için.
  // Çok parlak border kötü görünür.
  //
  // =========================================================

  static const Color border = Color(0xFF343438);

  static const Color borderLight = Color(0xFF45454A);

  // =========================================================
  // TEXT COLORS
  // =========================================================
  //
  // Tam beyaz (#FFFFFF) kullanmıyoruz.
  //
  // Sebep:
  // - fazla sert görünür
  // - uzun okumada göz yorar
  //
  // Hafif kırılmış beyaz daha premium görünür.
  //
  // =========================================================

  /// Ana yazı rengi
  static const Color textPrimary = Color(0xFFF5F5F5);

  /// Secondary text
  static const Color textSecondary = Color(0xFFA1A1AA);

  /// Açıklama / hint text
  static const Color textHint = Color(0xFF71717A);

  /// Disabled text
  static const Color textDisabled = Color(0xFF52525B);

  // =========================================================
  // ICON COLORS
  // =========================================================

  static const Color iconPrimary = textPrimary;

  static const Color iconSecondary = textSecondary;

  // =========================================================
  // STATUS COLORS
  // =========================================================
  //
  // Kullanıcı feedback sistemleri için.
  //
  // =========================================================

  /// Başarılı işlem
  static const Color success = Color(0xFF22C55E);

  /// Hata durumu
  static const Color error = Color(0xFFEF4444);

  /// Uyarı durumu
  static const Color warning = Color(0xFFF59E0B);

  /// Bilgilendirme
  static const Color info = Color(0xFF3B82F6);

  // =========================================================
  // FOOD CATEGORY COLORS
  // =========================================================
  //
  // Yemek kategorileri için yardımcı renkler.
  // UI’ye canlılık verir.
  //
  // Ama burada çıldırmıyoruz.
  // Çünkü her yere renk basınca uygulama çocuk oyununa dönüyor.
  //
  // =========================================================

  static const Color pizza = Color(0xFFFF8A65);

  static const Color burger = Color(0xFFFFB74D);

  static const Color dessert = Color(0xFFBA68C8);

  static const Color drinks = Color(0xFF4FC3F7);

  static const Color sushi = Color(0xFF81C784);

  // =========================================================
  // SHADOW COLORS
  // =========================================================
  //
  // Opacity düşük tutulur.
  // Ağır shadow kullanımı eski görünür.
  //
  // =========================================================

  static const Color shadow = Color(0x33000000);

  // =========================================================
  // GRADIENTS
  // =========================================================
  //
  // Bannerlar ve premium alanlar için.
  //
  // =========================================================

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      primary,
      primaryDark,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkGradient = LinearGradient(
    colors: [
      background,
      backgroundSecondary,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // =========================================================
  // OVERLAY COLORS
  // =========================================================
  //
  // Modal arkası blur alanlar.
  //
  // =========================================================

  static const Color overlay = Color(0x99000000);

  // =========================================================
  // DIVIDER COLORS
  // =========================================================

  static const Color divider = Color(0xFF2F2F33);

  // =========================================================
  // TRANSPARENT COLORS
  // =========================================================

  static const Color transparent = Colors.transparent;
}