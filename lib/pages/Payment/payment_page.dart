import 'package:flutter/material.dart';
import 'package:voln/resources/text_heading.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: TextHeading(text: 'Payment'),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.4,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: screenHeight * 0.02,
                    crossAxisSpacing: screenWidth * 0.03),
                itemBuilder: (context, index) {
                  return Container(
                    child: Text('\$50'),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
