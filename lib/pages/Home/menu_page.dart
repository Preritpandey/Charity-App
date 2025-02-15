import 'package:flutter/material.dart';
import 'package:voln/resources/text_heading.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextHeading(text: "Project"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body:Column(
        children: [
          
        ],
      ) ,
    );
  }
}
