import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextTheme createTextTheme(BuildContext context) {
    return GoogleFonts.interTextTheme(Theme.of(context).textTheme).copyWith(
      displayLarge: GoogleFonts.inter(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      ),
      displayMedium: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 0),
      displaySmall: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0),
      headlineLarge: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w800, letterSpacing: 0),
      headlineMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
      ),
      headlineSmall: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w700, letterSpacing: 0),
      titleLarge: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 0),
      titleMedium: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0),
      titleSmall: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0),
      bodyLarge: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.0),
      bodyMedium: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.0),
      bodySmall: GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w500, letterSpacing: 0.0),
      labelLarge: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: Colors.black54,
      ),
      labelMedium: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: Colors.black54,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: Colors.black54,
      ),
    );
  }
}
