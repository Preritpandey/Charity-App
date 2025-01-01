import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:voln/resources/text_normal.dart';
import 'package:voln/resources/text_subheading.dart';
import 'package:voln/widgets/event_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: PageView(
                controller: _pageController,
                children: const [
                  EventCard(
                    title: 'Social meetup',
                    imageUrl: 'https://picsum.photos/300',
                  ),
                  EventCard(
                    title: 'Community event',
                    imageUrl: 'https://picsum.photos/300',
                  ),
                  EventCard(
                    title: 'Charity run',
                    imageUrl: 'https://picsum.photos/300',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 16,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.pinkAccent,
                ),
              ),
            ),
            const Text('Categories'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Center(
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.06),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.12,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.01),
                              child: Card(
                                child: Center(
                                  child: Image.network(
                                      'https://picsum.photos/300'),
                                ),
                              ),
                            ),
                          ),
                          const Text("Environment")
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const Text("Trending"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.012),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
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
