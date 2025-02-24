import 'package:flutter/material.dart';
import 'package:voln/pages/Home/home_page.dart';
import 'package:voln/widgets/app_text.dart';

class CategoriesCard extends StatelessWidget {
  final String category;
  final String imageUrl;

  const CategoriesCard(
      {super.key, required this.category, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.03),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.width * 0.15,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAlias,
              child: Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          AppText(
            text: category,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
