import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Widget circuloContainer(List<Map<String, String>> items) {
  return Container(
    height: 170,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 105,
                    height: 105,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ClipOval(
                        child: Image.asset(
                          item['img']!,
                          fit: BoxFit.contain, 
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item['text']!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
