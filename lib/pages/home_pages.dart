import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/pages/providers/providers.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text("data"),
          Consumer(builder: (context,ref,child) {
              final somejee = ref.watch(dataProvider);
              return Text(somejee);
          })
          
        ],
      ),
    );
  }
}
