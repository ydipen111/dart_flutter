import 'package:flutter/material.dart';
import 'package:garrage_nepal/pages/home/jsx/body.dart'; // Make sure this path is correct
import 'package:get/get.dart'; // Import GetX
import 'package:get/get_core/src/get_main.dart'; // This line might not be necessary

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to IndexBOok page when tapped
        Get.to(() => const IndexBOok());
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: const Text(
          'Tap here to go to IndexBOok!',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
