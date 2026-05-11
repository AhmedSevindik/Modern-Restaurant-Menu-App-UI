import 'package:flutter/material.dart';

/// ===========================================================
/// RESPONSIVE UTILS
/// ===========================================================
///
/// Responsive kontrol sistemi.
///
/// Amaç:
/// - farklı ekran boyutlarını yönetmek
/// - mobile/tablet ayrımı yapmak
/// - scalable layout sistemi oluşturmak
///
/// ===========================================================

class Responsive {
  Responsive._();

  /// Mobile breakpoint
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  /// Tablet breakpoint
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 1024;
  }

  /// Desktop/Web breakpoint
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  /// Screen width
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Screen height
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}