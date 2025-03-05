import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/resources/text_heading.dart';
import 'package:voln/widgets/app_text.dart';
import 'package:voln/widgets/details_status_icons.dart';
import 'package:voln/widgets/donation_target.dart';
import 'package:voln/widgets/fundraiser_card.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              height: screenHeight * 0.3,
              width: screenWidth,
              child: SizedBox(
                height: screenHeight * 0.3,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        'assets/children.png',
                        width: screenWidth,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.04,
                      left: screenWidth * 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios_new)),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.04,
                      right: screenWidth * 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share_rounded)),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.08,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: screenHeight * 0.27,
              child: Container(
                height: screenHeight * 0.7,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: backgroundWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(screenHeight * 0.03),
                    topRight: Radius.circular(screenHeight * 0.03),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: screenWidth * 0.035,
                      left: screenWidth * 0.035,
                      top: screenHeight * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextHeading(text: 'Feed the hungry childrens'),
                      AppText(
                          text:
                              'Lets join together to help us feed hungry childrens accross the world. '),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        children: [
                          DetailsStatus(
                            title: 'Category',
                            detail: 'Medical',
                          ),
                          DetailsStatus(
                            title: 'Days left',
                            detail: '11',
                          ),
                          DetailsStatus(
                            title: 'Donation',
                            detail: 'Fatured',
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      FundraiserCard(),
                      SizedBox(height: screenHeight * 0.02),
                      DonationTarget(),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
