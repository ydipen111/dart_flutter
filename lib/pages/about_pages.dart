import 'package:flutter/material.dart';
import 'package:garrage_nepal/route/route_enum.dart';
import 'package:go_router/go_router.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int count = 0;
  String getEvenOrOdd(){
    return count % 2 == 0 ? "Even" : "odd";

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello this is a About page page'),
            Text(
              '$count ${count %2 ==0 ? 'Even number ' : "odd number"}',
              style: TextStyle(fontSize: 50),
            ),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                    print(count);
                  });
                },
                child: Text("make increment")),
            ElevatedButton(
                onPressed:count == 0 ? null : () {
                  setState(() {
                    if(count == 0) return;
                    count--;
                    print(count);
                  });
                },
                child: Text("Making decrement")),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(AppRoute.home.name);
                },
                child: Text("Go to about page"))
          ],
        ),
      ),
    );
  }
}
