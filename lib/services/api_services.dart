import 'dart:convert';  // Add this import
import 'package:dio/dio.dart';
import 'package:garrage_nepal/models/comments.dart';  // Make sure the file name is correct

Future<List<Comment>> gettingData() async {
  try {
    final response = await dio.get('');  // Fixed the typo from respone to response
    return (response.data['comments'] as List).map((m) => Comment.fromJson(m)).toList();  // Use m as the map, not json
  } on DioException catch (err) {
    throw 'some error';
  }
}
