import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  String text;
  double fontSize;
  FontWeight fontWeight;
  Color color;

  AppText({
    super.key,
    required this.text,
    this.fontSize = 13,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
