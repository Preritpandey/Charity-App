import 'package:flutter/material.dart';
import 'package:voln/pages/Home/menu_page.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/resources/text_heading.dart';
import 'package:voln/resources/text_normal.dart';
import 'package:voln/resources/text_subheading.dart';
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
    {'Disaster': 'QuickBarIcons/Disaster.png'},
    {'Education': 'QuickBarIcons/Education.png'},
    {'Medical': 'QuickBarIcons/Medical.png'},
    {'Others': 'QuickBarIcons/Others.png'}
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
                      color: Color.fromARGB(255, 205, 181, 201),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.5),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.search_rounded)),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.01),
            const TextHeading(
              text: 'Explore Projects',
              color: appDarkPurple,
            ),
            SizedBox(
              height: screenHeight * 0.3,
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

            const SizedBox(height: 10),
            const Text('Categories'),
            SizedBox(
              height: screenHeight * 0.16,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  print(categoriesImages[1].values.toString());
                  return CategoriesCard(
                      category: categoriesImages[index].keys.toString(),
                      imageUrl: categoriesImages[index].values.toString());
                },
              ),
            ),
            // const Text("Trending"),
            // SizedBox(height: screenHeight * 0.01),
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
