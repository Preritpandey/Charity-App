import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/widgets/app_text.dart';

class ActivitiesCard extends StatelessWidget {
  const ActivitiesCard({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      child: Container(
        width: screenWidth * 0.92,
        height: screenHeight * 0.27,
        decoration: const BoxDecoration(
          color: white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.02, vertical: screenHeight * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: 'Volunteer needed',
                          fontSize: 12,
                          color: textBlue,
                        ),
                        AppText(
                            text: 'Cleaning Bagmati river',
                            fontWeight: FontWeight.bold),
                        SizedBox(height: screenHeight * 0.01),
                        SizedBox(
                          // height: screenHeight * 0.067,
                          child: AppText(
                              text:
                                  'Over 90% of the bagmati river is dirty so thats why its vital for the environment'),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/dog.png',
                    height: screenHeight * 0.13,
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton.icon(
                      icon: Icon(Icons.watch_later_rounded),
                      onPressed: () {},
                      label: AppText(text: '1 hour'),
                      style: ButtonStyle(
                          elevation: WidgetStateProperty.all(0),
                          iconColor: WidgetStateProperty.all(Colors.orange),
                          backgroundColor:
                              WidgetStateProperty.all(backgroundWhite))),
                  SizedBox(width: screenWidth * 0.31),
                  IconButton(
                      onPressed: () {},
                      icon: SizedBox(
                        height: screenHeight * 0.03,
                        child: Image.asset('assets/NavIcons/bookmark.png',
                            color: Colors.orange),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.orange,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
