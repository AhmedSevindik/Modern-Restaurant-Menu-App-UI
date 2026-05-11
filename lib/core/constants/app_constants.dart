/// ===========================================================
/// APP CONSTANTS
/// ===========================================================
///
/// Uygulama genelinde kullanılan sabit değerler.
///
/// Hardcoded kullanım azaltılır.
///
/// ===========================================================

class AppConstants {
  AppConstants._();

  // =========================================================
  // APP INFO
  // =========================================================

  static const String appName = 'MenuVerse';

  // =========================================================
  // ANIMATIONS
  // =========================================================

  static const Duration animationDuration =
  Duration(milliseconds: 250);

  static const Duration slowAnimationDuration =
  Duration(milliseconds: 400);

  // =========================================================
  // API
  // =========================================================

  static const String baseUrl =
      'https://api.example.com';

  // =========================================================
  // PADDINGS
  // =========================================================

  static const double defaultPadding = 20;

  // =========================================================
  // BORDER RADIUS
  // =========================================================

  static const double defaultRadius = 20;
}