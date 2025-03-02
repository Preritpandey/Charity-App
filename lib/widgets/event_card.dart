import 'package:flutter/material.dart';
import 'package:voln/pages/Home/home_page.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/widgets/app_text.dart';

class EventCard extends StatelessWidget {
  final String category;
  final String imageUrl;

  const EventCard({super.key, required this.category, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    double screenHeight = context.screenHeight;
    double screenWidth = context.screenWidth;

    return SizedBox(
      width: screenWidth * 0.7,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.01),
              Center(
                child: SizedBox(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.2,
                  child: Stack(
                    children: [
                      Container(
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppText(text: 'Help Brazillian Medaical Workers'),
              Divider(height: 1),
              SizedBox(height: screenHeight * 0.01),
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                minHeight: 6,
                backgroundColor: Colors.grey.shade300,
                value: 0.55,
                color: Colors.blue.shade200,
              ),
              FundText()
            ],
          ),
        ),
      ),
    );
  }
}

class FundText extends StatelessWidget {
  const FundText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AppText(text: '\$12 of', color: textBlue),
        AppText(text: '\$24', fontWeight: FontWeight.bold),
        AppText(
          text: 'funded 50%',
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
