import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/route/app_routes.dart';

void main() {
  runApp(const ProviderScope(child: Home()));
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) { // Added WidgetRef ref parameter
    final goRouter = ref.watch(routerProvider); // Assuming routerProvider is generated
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
    );
  }
}