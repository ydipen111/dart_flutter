import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/providers/api_provider.dart';
import 'package:garrage_nepal/route/route_enum.dart';
import 'package:go_router/go_router.dart';

class HomePages extends ConsumerWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealDbState = ref.watch(mealProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Categories'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: mealDbState.when(
          data: (data) {
            return ListView.separated(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final category = data[index];
                return InkWell(
                  onTap: (){
                    context.pushNamed(
                      AppRoute.itemList.name,
                      pathParameters: {'label':category.strCategory}
                    );
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(category.strCategoryThumb),
                    ),
                    title: Text(category.strCategory),
                    subtitle: Text(category.strCategoryDescription),
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(),
            );
          },
          error: (err, stack) => Center(child: Text('Error: $err')),
          loading: () => Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
