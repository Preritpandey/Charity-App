import 'package:flutter/material.dart';
import 'package:voln/resources/text_heading.dart';

class DonationTarget extends StatelessWidget {
  const DonationTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextHeading(text: 'Charity Target', size: 15),
        Row(
          children: [
            Column(children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: '\$ 9.432',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '/ \$ 12.00',
                )
              ])),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.orangeAccent),
                      shape: WidgetStatePropertyAll(CircleBorder())),
                  onPressed: () {},
                  child: Text('Donate'))
            ]),
          ],
        )
      ],
    );
  }
}
