// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voln/resources/constant.dart';

class AppText extends StatelessWidget {
  String text;
  double fontSize;

  Color color;

  AppText({
    Key? key,
    required this.text,
    this.fontSize = 13,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(color: color, fontSize: fontSize),
    );
  }
}
