import 'package:flutter/material.dart';
import 'package:garrage_nepal/pages/home/home_pages.dart';
import 'package:garrage_nepal/pages/home/jsx/body.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 19,
          children: [
            const Text('homo page'),
            const Text('about page')
          ],
        ),

        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blueGrey,
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("click me"),
              GestureDetector(
                onTap: (){
                  Get.to(()=> const IndexBOok());

                },
              ),
              Text('This is a red text!'),
              Text('Cick here to go image page'),
            ],
          ),
        ),
      )
        );
  }
}
