import 'package:garrage_nepal/pages/auth/login.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';
part 'app_routes.g.dart';

@riverpod
GoRouter router (Ref ref) {
  return GoRouter(
    initialLocation: '/',


    routes:[

      GoRoute(path: '/',
        builder: (context, state) {
        return Login();
        }




      )

    ]

  );
}