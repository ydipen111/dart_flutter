import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/Constants/api.dart';
import 'package:garrage_nepal/Constants/api_error.dart';
import 'package:garrage_nepal/shared/client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class AuthService {
  final Dio dio;

  AuthService(this.dio); // Fixed typo in constructor

  // login
  Future<void> loginUser(Map<String, dynamic> map) async {
    try {
      final response = await dio.post(login); // Changed to POST request
      print(response.data);

    } on DioException catch (err) {
      throw ApiError.errorCheck(err).errMessage;

    }
  }

//   register
  Future<void> registerUser(Map<String, dynamic> map) async {
    try {
      final response = await dio.post(register, data:map); // Changed to POST request
      print(response.data);

    } on DioException catch (err) {
      throw ApiError.errorCheck(err).errMessage;
    }
  }



}

@riverpod
AuthService authService (Ref ref) {
  return AuthService(ref.watch(clientProvider));
}