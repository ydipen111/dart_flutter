import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/providers/api_provider.dart';
import 'package:garrage_nepal/route/route_enum.dart';
import 'package:go_router/go_router.dart';

class ItemList extends ConsumerWidget {
  final String label;
  const ItemList({super.key, required this.label});

  @override
  Widget build(BuildContext context,ref) {
    final itemState = ref.watch(idMealProvider(label));
    return Scaffold(
      body: itemState.when(
          data: (data){
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context,index){
                  final item = data[index];
                  return ListTile(
                    onTap: (){
                      context.pushNamed(
                        AppRoute.dishItemListx.name,
                        pathParameters: {'id':item.idMeal});
                    },


                    leading: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                        item.strMealThumb
                      ),
                    ),
                    title: Text(item.strMeal),

                  );

                }
            );
          },
          error: (error,st)=>Center(child: Text('$error'),),
        loading: () => Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(),
          ),
        ),

      ),



    );
  }
}
