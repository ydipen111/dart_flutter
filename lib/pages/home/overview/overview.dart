import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Display an image from assets
          Image.asset('assets/images/a.png'),

          // You can add other widgets below the image
          Text('This is an image above'),

          Text('This is an image above'),
        ],
      ),
    );
  }
}
