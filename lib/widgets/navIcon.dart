// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
 final String imageLink;

  const NavIcon({
    super.key,
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.03,
        child: Image.asset(
         imageLink,
          color: Colors.grey,
        ));
  }
}
