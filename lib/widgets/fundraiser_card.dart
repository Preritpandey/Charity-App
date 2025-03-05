import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/resources/text_heading.dart';

class FundraiserCard extends StatelessWidget {
  const FundraiserCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenHeight * 0.02),
        color: const Color.fromARGB(255, 240, 240, 222),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.01, horizontal: screenWidth * 0.035),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextHeading(text: 'Fundraiser'),
                TextHeading(text: '. .', size: 18),
              ],
            ),
            Row(
              children: [
                Container(
                    height: screenHeight * 0.08,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset('assets/dog.png', fit: BoxFit.cover)),
                SizedBox(width: screenWidth * 0.01),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Prerit Pandey',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius:
                              BorderRadius.circular(screenHeight * 0.02)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle,
                              color: bluishGreen, size: 16),
                          SizedBox(width: 4),
                          Text(
                            'Verified Account',
                            style: TextStyle(color: Colors.grey),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
