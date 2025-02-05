import 'package:dio/dio.dart';
import 'package:garrage_nepal/models/id_meal.dart';
import 'package:garrage_nepal/models/mead_db.dart';
import 'package:garrage_nepal/models/post.dart';

final dio = Dio();

Future<List<Post>> getPosts() async {
  try {
    final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
    print(response.data);
    // return (response.data as List).map((post)=>Post.fromJson(post)).toList();
    return (response.data as List).map((post)=>Post.fromJson(post)).toList();
  } on DioException catch (err) {
    throw Exception('Dio error: ${err.message}');
  }
}


Future<List<Category>> fetchCategories() async {
  final response = await Dio().get('https://www.themealdb.com/api/json/v1/1/categories.php');
  final List categoriesJson = response.data['categories'];
  return categoriesJson.map((json) => Category.fromJson(json)).toList();
}


Future<List<IdMeal>> fetchIdCategories() async {
  final response = await Dio().get('https://www.themealdb.com/api/json/v1/1/categories.php');
  final List categoriesJson = response.data['categories'];
  return categoriesJson.map((json) => IdMeal.fromJson(json)).toList();
}


