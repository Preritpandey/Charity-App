import 'package:flutter/material.dart';
import 'package:voln/pages/Calendar/calendar.dart';
import 'package:voln/pages/Home/home_page.dart';
import 'package:voln/pages/Inbox/inbox.dart';
import 'package:voln/pages/Location/location.dart';
import 'package:voln/pages/search/search.dart';
import 'package:voln/resources/constant.dart';

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
      const HomePage(),
      const Location(),
      const Search(),
      const Calendar(),
      const Inbox(),
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
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), label: 'location'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'calendar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.all_inbox_sharp), label: 'inbox'),
          ]),
    );
  }
}
