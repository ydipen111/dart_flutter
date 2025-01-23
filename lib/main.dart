

import 'package:flutter/material.dart';
import 'package:garrage_nepal/route/app_routes.dart';

void main(){
  print("hello world");
  runApp(const Main());
  
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
