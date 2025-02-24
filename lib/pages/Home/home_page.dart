import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/resources/text_heading.dart';
import 'package:voln/widgets/activities_card.dart';
import 'package:voln/widgets/app_text.dart';
import 'package:voln/widgets/categories_card.dart';
import 'package:voln/widgets/event_card.dart';

extension MediaQueryValues on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
}

class HomePage extends StatelessWidget {
  List<Map<String, String>> categoriesImages = [
    {'Disaster': 'assets/QuickBarIcons/Disaster.png'},
    {'Education': 'assets/QuickBarIcons/Education.png'},
    {'Medical': 'assets/QuickBarIcons/Medical.png'},
    {'Others': 'assets/QuickBarIcons/Others.png'}
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = context.screenWidth;
    double screenHeight = context.screenHeight;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02, vertical: screenHeight * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight * 0.05,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/300',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextHeading(
                      text: 'Hi, Good Evening',
                      color: appDarkPurple,
                    ),
                    AppText(
                      fontWeight: FontWeight.bold,
                      text: 'Prerit',
                      color: const Color.fromARGB(255, 205, 181, 201),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.46),
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset('assets/search.png')),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.01),
            const TextHeading(
              text: 'Explore Projects',
              color: appDarkPurple,
            ),
            SizedBox(
              height: screenHeight * 0.32,
              child: Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const EventCard(
                        category: "Help children",
                        imageUrl: "assets/children.png");
                  },
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.01),
            SizedBox(
              height: screenHeight * 0.1,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return CategoriesCard(
                      category: categoriesImages[index].keys.first,
                      imageUrl: categoriesImages[index].values.first);
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                    text: 'Popular activities', fontWeight: FontWeight.bold),
                AppText(
                  text: 'See all',
                  color: textBlue,
                )
              ],
            ),

            SizedBox(height: screenHeight * 0.01),
            ActivitiesCard(
                screenWidth: screenWidth, screenHeight: screenHeight),
            // SizedBox(
            //   height: screenHeight * 0.25,
            //   child: ListView.builder(
            //     itemCount: 3,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (BuildContext context, int index) {
            //       return SizedBox(
            //         width: screenWidth * 0.3,
            //         child: Column(
            //           children: [
            //             SizedBox(
            //               height: screenHeight * 0.17,
            //               child: Card(
            //                 color: Colors.red,
            //                 clipBehavior: Clip.antiAliasWithSaveLayer,
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(30)),
            //                 elevation: 0,
            //                 child: const Image(
            //                   image: AssetImage('assets/dog.png'),
            //                   fit: BoxFit.cover,
            //                 ),
            //               ),
            //             ),
            //             const Row(
            //               children: [
            //                 Icon(
            //                   Icons.circle,
            //                   size: 12,
            //                   color: Colors.blue,
            //                 ),
            //                 TextSubHeading(text: 'City Gardening'),
            //               ],
            //             ),
            //             const TextNormal(
            //                 text:
            //                     'Help the neighborhood with a gardening project')
            //           ],
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
