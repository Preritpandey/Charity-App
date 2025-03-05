import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/widgets/app_text.dart';

class DetailsStatus extends StatelessWidget {
  final String title;
  final String detail;
  const DetailsStatus({super.key, required this.title, required this.detail});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.3,
      height: screenHeight * 0.08,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                      height: 21,
                      child: Image.asset('assets/NavIcons/donate.png')),
                  AppText(text: title),
                ],
              ),
              AppText(
                text: detail,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const VerticalDivider(
            color: darkGrey,
          )
        ],
      ),
    );
  }
}
