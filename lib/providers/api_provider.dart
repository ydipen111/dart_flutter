

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/services/api_service.dart';

final apiProvider = FutureProvider((ref){
  return getPosts();
});


final mealProvider = FutureProvider((ref) async {
  return fetchCategories();
});

final idMealProvider = FutureProvider.family((ref,String query)async{
  return fetchIdCategories();
});
