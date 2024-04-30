import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget verMais(List<Map<String, String>> items,
    {String title = "Título", String subtitle = "Subtítulo"}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.nunitoSans(
                        color: Colors.grey[400], fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
