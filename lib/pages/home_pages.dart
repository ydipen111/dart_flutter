import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:garrage_nepal/route/route_enum.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel View & Buttons'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: CarouselView(
              itemExtent: 200,
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1737071371043-761e02b1ef95?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1737071371043-761e02b1ef95?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1737071371043-761e02b1ef95?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://picsum.photos/400/$index',
                    fit: BoxFit.cover,
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Alert dialog"),
                          content: const Text("Are you sure?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Confirm'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Show Dialog'),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {
                    context.pushNamed(AppRoute.grid.name);
                  },
                  child: const Text('Go to Grid Page'),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.green,
                        duration: Duration(milliseconds: 400),
                        content: Text("Login successful"),
                      ),
                    );
                  },
                  child: const Text('Show Snackbar'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text('Text Button'),
                ),
                const SizedBox(height: 10),
                IconButton(
                  onPressed: () {
                    context.pushNamed(AppRoute.form.name);
                  },
                  icon: const Icon(Icons.add),
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    context.pushNamed(AppRoute.about.name);
                  },
                  child: const Text('About'),
                ),

                const SizedBox(height: 10,),

                FloatingActionButton(
        onPressed: () {
      context.pushNamed(AppRoute.ui.name);
    },
    child: const Text('UI-page'),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
