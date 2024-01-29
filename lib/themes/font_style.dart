import 'package:credease/themes/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// [NkGetXFontStyle] USE CUSTOM FONT

class NkGetXFontStyle {
  static const primaryCustomFontStyle = "source-sans-pro";
  static const secondaryCustomFontStyle = "play_fair_display_regular";

  static TextTheme get primaryTextTheme => ThemeData().textTheme.apply(
        fontFamily: GoogleFonts.poppins(color: primaryTextColor).fontFamily,
      );
}
