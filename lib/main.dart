import 'package:flutter/material.dart';

/// Theme
import 'theme/app_theme.dart';

/// Screens
import 'screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const DineFlowApp());
}

/// ===========================================================
/// DINEFLOW APP
/// ===========================================================
///
/// Uygulamanın root widget’ı.
///
/// Burada:
/// - tema sistemi
/// - navigation
/// - global settings
/// - app configuration
///
/// yönetilir.
///
/// Bu dosyanın amacı:
/// uygulamanın giriş noktası olmak.
///
/// Buraya business logic yazılmaz.
/// API çağrısı gömülmez.
/// Devasa widget yazılmaz.
///
/// Yoksa main.dart dosyası medeniyetin çöküşüne döner.
/// ===========================================================

class DineFlowApp extends StatelessWidget {
  const DineFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // =====================================================
      // DEBUG BANNER
      // =====================================================
      //
      // Sağ üstteki DEBUG yazısını kaldırır.
      //
      // Production hissi verir.
      //
      // =====================================================

      debugShowCheckedModeBanner: false,

      // =====================================================
      // APP TITLE
      // =====================================================

      title: 'DineFlow',

      // =====================================================
      // THEME
      // =====================================================
      //
      // Merkezi tema sistemi.
      //
      // Tüm:
      // - renkler
      // - typography
      // - button stilleri
      // - input stilleri
      //
      // buradan gelir.
      //
      // =====================================================

      theme: AppTheme.darkTheme,

      // =====================================================
      // DARK THEME MODE
      // =====================================================
      //
      // Sistem dark mode kullanır.
      //
      // =====================================================

      themeMode: ThemeMode.dark,

      // =====================================================
      // HOME SCREEN
      // =====================================================
      //
      // Uygulamanın ilk açılan ekranı.
      //
      // Şimdilik HomeScreen.
      // Sonra:
      // SplashScreen
      // Onboarding
      // Auth kontrolü
      //
      // eklenebilir.
      //
      // =====================================================

      home: const HomeScreen(),
    );
  }
}