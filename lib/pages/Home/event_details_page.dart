import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/resources/text_heading.dart';
import 'package:voln/resources/text_subheading.dart';
import 'package:voln/widgets/app_text.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: screenHeight * 0.3,
              width: screenWidth,
              color: Colors.red,
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
                      left: screenWidth * 0,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new)),
                    ),
                    Positioned(
                      right: screenWidth * 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share),
                      ),
                    ),
                    Positioned(
                        top: screenHeight * 0.08,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(5)),
                            child: const TextHeading(
                              text: 'Details',
                              color: Colors.black,
                            )))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              // height: ,
              top: screenHeight * 0.3,
              child: Container(
                  height: screenHeight * 0.7,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(screenHeight * 0.03),
                      topRight: Radius.circular(screenHeight * 0.03),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextHeading(text: 'Help Abandoned animals'),
                      TextSubHeading(
                          text:
                              'Help abandoned animals in the shelter with us Animal Kaiser '),

                              Row(children: [
                                Container(),
                                
                              ],)
                    ],
                  )
                  
                  )),
        ],
      ),
    );
  }
}
