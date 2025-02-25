import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/resources/text_heading.dart';
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
                height: screenHeight * 0.25,
                width: screenWidth,
                color: Colors.red,
                child: Text("data"),
              )),
          Positioned(
            height: ,
              child: Container(
            height: screenHeight * 0.7,
            width: screenWidth,
            // color: Colors.black,
            child: Text('data'),
          ))
        ],
      ),
      // body: Column(
      //   children: [
      //     SizedBox(
      //       height: screenHeight * 0.3,
      //       width: double.infinity,
      //       child: Stack(
      //         children: [
      //           Positioned(
      //             child: Image.asset(
      //               'assets/children.png',
      //               width: screenWidth,
      //               height: double.infinity,
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           Positioned(
      //             left: screenWidth * 0,
      //             child: IconButton(
      //                 onPressed: () {},
      //                 icon: const Icon(Icons.arrow_back_ios_new)),
      //           ),
      //           Positioned(
      //             right: screenWidth * 0,
      //             child: IconButton(
      //               onPressed: () {},
      //               icon: const Icon(Icons.share),
      //             ),
      //           ),
      //           Positioned(
      //               top: screenHeight * 0.08,
      //               child: Container(
      //                   decoration: BoxDecoration(
      //                       color: Colors.grey.withOpacity(0.6),
      //                       borderRadius: BorderRadius.circular(5)),
      //                   child: const TextHeading(
      //                     text: 'Details',
      //                     color: Colors.black,
      //                   )))
      //         ],
      //       ),
      //     ),
      //     SizedBox(
      //       height: screenHeight * 0.8,
      //       width: screenWidth,
      //       child: Container(
      //         decoration: BoxDecoration(
      //           color: Colors.red,
      //           borderRadius: BorderRadius.only(
      //               topLeft: Radius.circular(10),
      //               topRight: Radius.circular(10)),
      //         ),
      //         child: Column(
      //           children: [Text('suywgs')],
      //         ),
      //       ),
      //     ) // change later to 0.6 , as this screen will not have nav bar
      //   ],
      // ),
    );
  }
}
