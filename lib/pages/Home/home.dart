import 'package:flutter/material.dart';
import 'package:voln/pages/Calendar/calendar.dart';
import 'package:voln/pages/Home/event_details_page.dart';
import 'package:voln/pages/Home/home_page.dart';
import 'package:voln/pages/Inbox/inbox.dart';
import 'package:voln/pages/Location/location.dart';
import 'package:voln/pages/search/search.dart';
import 'package:voln/resources/constant.dart';

// extension MediaQueryValues on BuildContext {
//   Size get screenSize => MediaQuery.of(this).size;
//   double get screenWidth => screenSize.width;
//   double get screenHeight => screenSize.height;
// }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTab = 0;

  void changeTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List pages = [
      DetailsPage(),
      HomePage(),
      const Location(),
      const Search(),
      const Calendar(),
      // const Inbox(),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height * 0,
        backgroundColor: backgroundWhite,
        elevation: 0,
      ),
      body: pages[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: iconColorBlack,
          selectedItemColor: heraldGreen,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedTab,
          onTap: (value) => changeTab(value),
          enableFeedback: false,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/NavIcons/home.png'), label: 'home'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/NavIcons/bookmark.png'),
                label: 'bookmark'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/NavIcons/donate.png'),
                label: 'donate'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/NavIcons/menu.png'), label: 'menu'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/NavIcons/profile.png'),
                label: 'profile'),
          ]),
    );
  }
}
