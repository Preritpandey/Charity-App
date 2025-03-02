import 'package:flutter/material.dart';
import 'package:voln/resources/constant.dart';

class FundraiserCard extends StatelessWidget {
  const FundraiserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundWhite,
      elevation: 0,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading:
            Image.asset('assets/dog.png', height: 40), // Increased image size
        title: const Text(
          'Prerit Pandey',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Row(
          children: [
            Icon(Icons.check_circle,
                color: darkGrey, size: 16),
            SizedBox(width: 4), 
            Text(
              'Verified Account',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
