import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/providers/api_provider.dart';

class DishitemList extends ConsumerWidget {
  final String id;
  const DishitemList({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishState = ref.watch(idMealDishProvider(id));
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: dishState.when(
          data: (data) {
            final dishMeal = data[0];
            return ListView(
              children: [
                Text(dishMeal.strMeal),
                Text(dishMeal.strInstruction),
                const SizedBox(height: 9),
                Text(dishMeal.idMeal),
                Text(dishMeal.strMealThumb),




              ],
            );
          },
          error: (error, st) => Center(child: Text('$error')),
          loading: () => const Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
