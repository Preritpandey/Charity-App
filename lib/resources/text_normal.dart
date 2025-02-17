import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';

class TextNormal extends StatelessWidget {
  final double size;
  final String? text;
  final Color? color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  const TextNormal(
      {super.key,
      this.size = 16,
      required this.text,
      this.color,
      this.fontWeight = FontWeight.normal,
      this.maxLines,
      this.overflow,
      this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          color: color,
          fontSize: size == 16 ? fontSize16 : size,
          fontWeight: fontWeight,
          overflow: overflow,
          fontFamily: fontFamily,
        ));
  }
}
