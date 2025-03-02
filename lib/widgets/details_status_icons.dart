import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/widgets/app_text.dart';

class DetailsStatus extends StatelessWidget {
  String title;
  String detail;
  DetailsStatus({super.key, required this.title, required this.detail});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.3,
      height: screenHeight * 0.1,
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                      child: Image.asset('assets/QuickBarIcons/Medical.png')),
                  AppText(text: title),
                ],
              ),
              AppText(
                text: detail,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          VerticalDivider(
            color: darkGrey,
          )
        ],
      ),
    );
  }
}
