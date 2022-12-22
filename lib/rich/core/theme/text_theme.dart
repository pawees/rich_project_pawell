import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTheme {

  static TextTheme lightText = TextTheme(
    headline2: GoogleFonts.macondo(
      color: Colors.black87
    ),
    subtitle2: GoogleFonts.macondo(
        color: Colors.black54,
        fontSize: 19,
    ),

  );

  static TextTheme darkText = TextTheme(
    headline2: GoogleFonts.macondo(
      color: Colors.white70
    ),
    subtitle2: GoogleFonts.macondo(
        color: Colors.white,
        fontSize: 19,
    ),

  );
}

