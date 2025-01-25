import 'package:flutter/material.dart';

class UiPage extends StatelessWidget {
  const UiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
              child: Container(
                width: 200,
                child: Card(
                  color: Colors.orange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children:[
                      Row(
                        children: [

                          Container(
                            height: 20,
                              width:20,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6)
                          )
                          )

                        ],
                      ),

                      Row(
                        children: [
                          Text("Dipendra yesmali magar fron kathmand nepa")

                        ],
                      )


                    ]
                  ),
                ),
              ))

    );
  }
}
