import 'package:flutter/material.dart';
import 'package:voln/pages/Home/menu_page.dart';
import 'package:voln/resources/constant.dart';
import 'package:voln/resources/text_heading.dart';
import 'package:voln/resources/text_normal.dart';
import 'package:voln/resources/text_subheading.dart';
import 'package:voln/widgets/categories_card.dart';
import 'package:voln/widgets/event_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextHeading(
          text: 'Welcome Tom!',
          color: appDarkPurple,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuPage()));
              },
              icon: const Icon(Icons.menu))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextHeading(
              text: 'Explore Projects',
              color: appDarkPurple,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const EventCard(
                            category: "Help children",
                            imageUrl: "assets/children.png");
                      })),
            ),
            const SizedBox(height: 15),
            const Text('Categories'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return CategoriesCard(
                      category: 'Environment',
                      imageUrl: 'https://picsum.photos/300');
                },
              ),
            ),
            const Text("Trending"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.17,
                          child: Card(
                            color: Colors.red,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 0,
                            child: const Image(
                              image: AssetImage('assets/dog.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 12,
                              color: Colors.blue,
                            ),
                            TextSubHeading(text: 'City Gardening'),
                          ],
                        ),
                        const TextNormal(
                            text:
                                'Help the neighborhood with a gardening project')
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
