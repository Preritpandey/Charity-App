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
  final List<Map<String, String>> categoriesImages = [
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.02, vertical: screenHeight * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: screenHeight * 0.04,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/300',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextHeading(
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
                  const Spacer(),
                  IconButton(
                      onPressed: () {}, icon: Image.asset('assets/search.png'))
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              const TextHeading(
                text: 'Explore Projects',
                color: appDarkPurple,
              ),
              SizedBox(
                height: screenHeight * 0.32,
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
              SizedBox(height: screenHeight * 0.01),
              SizedBox(
                height: screenHeight * 0.14,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppText(
                        text: 'Popular activities',
                        fontWeight: FontWeight.bold),
                    AppText(
                      text: 'See all',
                      color: textBlue,
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              ActivitiesCard(
                  screenWidth: screenWidth, screenHeight: screenHeight),
            ],
          ),
        ),
      ),
    );
  }
}
