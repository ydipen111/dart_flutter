

import 'package:garrage_nepal/pages/about_pages.dart';
import 'package:garrage_nepal/pages/form_page.dart';
import 'package:garrage_nepal/pages/grid_page.dart';
import 'package:garrage_nepal/pages/home_pages.dart';
import 'package:garrage_nepal/pages/ui_page.dart';
import 'package:garrage_nepal/route/route_enum.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(
        path: '/',
        name:AppRoute.home.name,
        builder: (context,state){
          return HomePages();
        },
      routes: [
        GoRoute(
            path: '/grid',
            name:AppRoute.grid.name,
            builder: (context,state){
              return GridPage();
            }
        ),


      ]
    ),

    GoRoute(
        path: '/form',
        name:AppRoute.form.name,
        builder: (context,state){
          return FormPage();
        }
    ),

    GoRoute(
        path: '/ui-page',
      name: AppRoute.ui.name,
      builder: (context, state){
          return UiPage();
      }
    ),

    GoRoute(
    path: '/about',
    name:AppRoute.about.name,
    builder: (context,state){
      return AboutPage();

    })



  ]
);