import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final double borderRadius;
  final double textSize;
  final Color textColor;
  final double buttonWidth;
  final double buttonHeight;

  const AppButton({
    super.key,
    required this.buttonText,
    this.buttonColor = white,
    this.borderRadius = 10,
    this.textSize = 20,
    this.textColor = Colors.white,
    this.buttonWidth = 200,
    this.buttonHeight = 45,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      width: buttonWidth,
      decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(color: darkGrey),
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Center(
        child: AppText(
          text: buttonText,
          fontSize: textSize,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }
}
