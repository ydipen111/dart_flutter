import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/models/commets.dart';
import 'package:garrage_nepal/shared/client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// Fetches a list of comments from the specified API endpoint.
///
/// Throws a descriptive error message if the request fails or the data format is invalid.
class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<List<Comment>>getData()async{
    try{
      final response = await dio.get('');
      final data = (response.data['comments']as List);
      return data.map((m)=>Comment.fromJson(m)).toList();

    }on DioException catch(err){
      throw '$err';
    }
  }



}


@riverpod
ApiService apiService (Ref ref) {
  return ApiService(ref.watch(clientProvider));
}

