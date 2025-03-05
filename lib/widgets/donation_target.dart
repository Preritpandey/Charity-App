import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/resources/text_heading.dart';
import 'package:voln/widgets/app_text.dart';

class DonationTarget extends StatelessWidget {
  const DonationTarget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const TextHeading(text: 'Charity Target', size: 15),
        SizedBox(height: screenHeight * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: '\$ 9.432',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: textColor)),
                  TextSpan(
                      text: '/ \$ 12.00', style: TextStyle(color: textColor))
                ],
              ),
            ),
            SizedBox(width: screenWidth * 0.4),
            AppText(text: '83%', fontSize: 11)
          ],
        ),
        Center(
          child: Container(
            width: screenWidth * 0.8,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: LinearProgressIndicator(
              value: 0.8,
              backgroundColor: const Color.fromARGB(255, 194, 200, 200),
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.2),
        InkWell(
          splashFactory: InkSplash.splashFactory,
          child: Center(
            child: Container(
              height: screenHeight * 0.06,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: appBlue,
              ),
              child: Center(
                  child: AppText(
                text: 'Donate Now',
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
