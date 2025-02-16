

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/Constants/api_error.dart';
import 'package:garrage_nepal/route/app_routes.dart';
import 'package:hive/hive.dart';





void main () async{
  final res = ApiError.errorCheck();
  WidgetsFlutterBinding.ensureInitialized();
  final bx = await Hive.openBox('box');
  runApp(ProviderScope(child: Main()));
  
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
