import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'), // AppBar title
        backgroundColor: Colors.green, // AppBar background color
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            // Navigates to the IndexBook screen when tapped
            Get.to(() => const IndexBook(), transition: Transition.leftToRightWithFade);
          },
          child: Container(
            padding: const EdgeInsets.all(13), // Adds padding inside the container
            decoration: BoxDecoration(
              color: Colors.green, // Sets the background color of the container
              borderRadius: BorderRadius.circular(8), // Makes the container's corners rounded
            ),
            child: const Text(
              'Go to Index Book',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

class IndexBook extends StatelessWidget {
  const IndexBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index Book'), // AppBar title
        backgroundColor: Colors.blue, // AppBar background color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers content vertically
          children: [
            const Text(
              'Index Book Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ), // Main text in the column
            const SizedBox(height: 20), // Adds space between widgets
            TextButton(
              onPressed: () {
                // Navigates back to the previous screen
                Get.back();
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green, // Button background color
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button padding
              ),
              child: const Text(
                'Go Back',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
