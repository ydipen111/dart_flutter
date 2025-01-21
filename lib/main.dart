

import 'package:flutter/material.dart';
import 'package:garrage_nepal/pages/home_pages.dart';
import 'package:get/get.dart';

void main(){
  runApp(Main());
  
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePages(),
    );
  }
}
