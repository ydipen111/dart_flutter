// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:garrage_nepal/providers/api_provider.dart';
// import 'package:garrage_nepal/providers/gen_provider.dart';
// import 'package:garrage_nepal/route/route_enum.dart';
// import 'package:go_router/go_router.dart';
//
// class HomePages extends ConsumerWidget {
//   const HomePages({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final mealDbState = ref.watch(mealProvider);
//     final commentState = ref.watch(gettingcommentProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Meal Categories'),),
//       body: commentState.when(
//         data: (data) {
//           return ListView.builder(
//             itemCount: data.length,
//               itemBuilder: (context,index){
//               return Text('Hello');
//               });
//         },
//         error: (err, stack) => Center(child: Text('$err'),),
//         loading: () => Center(child: CircularProgressIndicator(),),
//       ),
//
//
//     );
//   }
// }
