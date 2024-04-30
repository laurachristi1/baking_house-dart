import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget destaqueS({String title = "Título"}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
    child: Align(
      alignment: Alignment.centerLeft, 
      child: Text(
        title,
        style: GoogleFonts.nunitoSans(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
