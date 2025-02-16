import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/pages/auth/login.dart';
import 'package:garrage_nepal/pages/auth/signup.dart';
import 'package:garrage_nepal/pages/home_pages.dart';
import 'package:garrage_nepal/pages/item_list.dart';
import 'package:garrage_nepal/pages/dishitem_list.dart';
import 'package:garrage_nepal/route/route_enum.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_routes.g.dart';

@riverpod
 GoRouter goRouter(Ref ref) {

  return  GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: '/',
          name: AppRoute.home.name,
          builder: (context, state) {
            return const LoginPage();
          },
          routes: [

            GoRoute(
                path: 'signup',
                name: AppRoute.signup.name,
                builder: (context,state){
                  return Signup();


                }
            ),
            GoRoute(
                path: 'item-list/:label',
                name:  AppRoute.itemList.name,
                builder: (context,state){
                  final label = state.pathParameters['label']!;
                  return ItemList(label: label);

                }
            ),
            GoRoute(
                path: 'dish-list/:id',
                name:  AppRoute.dishItemListx.name,
                builder: (context,state){
                  final id = state.pathParameters['id']!;
                  return DishitemList(id: id);

                }
            )
          ]
      ),
    ],
  );
}
