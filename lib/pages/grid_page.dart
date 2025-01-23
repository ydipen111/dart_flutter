
import 'package:flutter/material.dart';
import 'package:garrage_nepal/models/sample.dart';
import 'package:go_router/go_router.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          context.pop();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: GridView.builder(
        itemCount: samples.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing:30,
          mainAxisSpacing: 28,
          // Example: 4 columns for larger screens and 2 for smaller ones
        ),


        itemBuilder: (context,index){
          final sample = samples[index];
            return Card(
              color: Colors.green,
              child: Column(
                children: [
                  Image.network(sample.image),
                ],
              ),
            );


          },
      ) ,
    );
  }
}
