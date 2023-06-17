import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(40)),
      child: Row(children: [
        Expanded(
            child: Column(
          children: [
            Text(
              "Discount for autumn collection 10% off",
              style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ],
        ))
      ]),
    );
  }
}
