

import 'package:flutter/material.dart';

class TodoUi extends StatelessWidget {
  const TodoUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Text("tex ui"),
              Text("Text 2Ui")
              
            ],
          )
        ],

    ),
    );
  }
}
