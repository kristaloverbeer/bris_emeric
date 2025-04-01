import 'package:bris_emeric/config/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = Provider.family<ThemeData, BuildContext>((ref, context) {
  return AppTheme.createTheme(context, Brightness.light);
});

final darkThemeProvider = Provider.family<ThemeData, BuildContext>((ref, context) {
  return AppTheme.createTheme(context, Brightness.dark);
});

class AppTheme {
  static ThemeData createTheme(BuildContext context, Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      // Colors
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primaryLight,
      primaryColorDark: AppColors.primaryDark,
      scaffoldBackgroundColor: isDark ? AppColors.scaffoldDark : AppColors.scaffoldLight,
      cardColor: isDark ? AppColors.cardDark : AppColors.cardLight,
      dividerColor: isDark ? AppColors.dividerDark : AppColors.dividerLight,
      highlightColor: isDark ? AppColors.highlightDark : AppColors.highlightLight,
      // Typography
      textTheme: AppTypography.createTextTheme(context),
      // Iconography
      iconTheme: IconThemeData(
        color: isDark ? AppColors.iconDark : AppColors.iconLight,
        size: 20.0,
      ),
      primaryIconTheme: IconThemeData(
        color: isDark ? AppColors.iconDark : AppColors.iconLight,
        size: 20.0,
      ),
      // Cards
      cardTheme: CardTheme(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}

class AppColors {
  // Primary colors
  static const Color primary = Color(0xFF000000);
  static const Color primaryLight = Color(0xFF444444);
  static const Color primaryDark = Color(0xFF000000);

  // Background colors
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color backgroundDark = Color(0xFF121212);

  // Scaffold colors
  static const Color scaffoldLight = Color(0xFFFFFFFF);
  static const Color scaffoldDark = Color(0xFF121212);

  // Divider colors
  static const Color dividerLight = Color(0xFFEEEEEE);
  static const Color dividerDark = Color(0xFF303030);

  // Highlight colors
  static const Color highlightLight = Color(0xFFE8E8E8);
  static const Color highlightDark = Color(0xFF303030);

  // Text colors
  static const Color textPrimaryLight = Color(0xFF000000);
  static const Color textSecondaryLight = Color(0xFF666666);
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFB0B0B0);

  // Card colors
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF121212);

  // Icon colors
  static const Color iconLight = Color(0xFF121212);
  static const Color iconDark = Color(0xFFFFFFFF);

  // Status colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFE53935);
  static const Color warning = Color(0xFFFFA726);
}
