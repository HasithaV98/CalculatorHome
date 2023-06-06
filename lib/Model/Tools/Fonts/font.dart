import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFonts {
  late TextStyle bodyNormal = GoogleFonts.lato().copyWith(fontSize: 18);
  late TextStyle titleLarge =
      GoogleFonts.lato().copyWith(fontSize: 30, fontWeight: FontWeight.bold);
  late TextStyle bodySmall = GoogleFonts.lato().copyWith(fontSize: 14);
}
