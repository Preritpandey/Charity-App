import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:voln/widgets/event_card.dart';

class ExploreProjectsScreen extends StatefulWidget {
  const ExploreProjectsScreen({super.key});

  @override
  _ExploreProjectsScreenState createState() => _ExploreProjectsScreenState();
}

class _ExploreProjectsScreenState extends State<ExploreProjectsScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Expanded(
                child: PageView(
                  controller: _pageController,
                  children: const [
                    EventCard(
                      title: 'Social meetup',
                      imageUrl:
                          'https://via.placeholder.com/300', // Replace with your image
                    ),
                    EventCard(
                      title: 'Community event',
                      imageUrl:
                          'https://via.placeholder.com/300', // Replace with another image
                    ),
                    EventCard(
                      title: 'Charity run',
                      imageUrl:
                          'https://via.placeholder.com/300', // Replace with another image
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3, // Number of cards
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
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
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
                                    'https://content.wepik.com/statics/32486251/preview-page0.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
