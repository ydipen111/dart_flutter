import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/providers/api_provider.dart';
import 'package:garrage_nepal/services/api_service.dart';

class CategoryList extends ConsumerWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryState = ref.watch(apiProvider);

    return categoryState.when(
      data: (data) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              final post = data[index];
              return Column(
                children: [
                  Text(post.body),
                ],
              );
            },
            childCount: data.length,
          ),
        );
      },
      error: (err, st) => SliverFillRemaining(
        child: Center(child: Text('$err')),
      ),
      loading: () => SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
