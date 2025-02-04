import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/providers/api_provider.dart';

class HomePages extends ConsumerWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiState = ref.watch(apiProvider);

    return Scaffold(
      appBar: AppBar(),
      body: apiState.when(
        data: (data) {
          return Text("data");
        },
        error: (error, st) {
          return Text('$error');
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
