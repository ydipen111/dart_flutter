

import 'package:flutter/material.dart';
import 'package:garrage_nepal/route/route_enum.dart';
import 'package:go_router/go_router.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel view new')
      ),

      body: Column(
        children: [

          SizedBox(
            height:200,
            child: CarouselView(
                itemExtent: 200,
                children: [
                  Image.network('https://images.unsplash.com/photo-1737071371043-761e02b1ef95?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8', fit: BoxFit.cover,),
                  Image.network('https://images.unsplash.com/photo-1737071371043-761e02b1ef95?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8', fit: BoxFit.cover),
                  Image.network('https://images.unsplash.com/photo-1737071371043-761e02b1ef95?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8', fit: BoxFit.cover)
                ]),

          ),
          const SizedBox(height: 20),

          //second carousel
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              itemExtent: 200,
              children: List.generate(10, (index){
                return Image.network('https://picsum.photos/400$index', fit: BoxFit.cover);
                
              })

            )
          ),
          
          //thirdOne
          SizedBox(
            height: 200,
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,

                  ),
                    onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Alert dialog"),
                        content: Text("Are you sure"),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.of(context).pop();
                          }, child: Text('Cancle')),
                          TextButton(onPressed: (){
                            Navigator.of(context).pop();
                          }, child:Text('Confirm')),
                      ],
                      );
                    });
                    }, child: Text(' button')),
                OutlinedButton(onPressed: (){
                  context.pushNamed(AppRoute.grid.name);
                  

                }, child: Text(' Grid-page')),

                OutlinedButton(onPressed: (){
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                        duration: Duration(milliseconds:400),
                        content: Text("Login succesfull"))
                  );
                }, child: Text(' button')),


                TextButton(onPressed: (){

                }, child: Text(' button')),

                IconButton(onPressed: (){
                  context.pushNamed(AppRoute.form.name);
                }, icon: Icon(Icons.add)),
                FloatingActionButton(onPressed: (){
                  context.pushNamed(AppRoute.about.name);
                }, child: Text(' About page')),
                // MaterialButton(onPressed: (){}, child: Text(' button')),
              ],
            ),
          )

        ],
      ),
    );

  }
}
