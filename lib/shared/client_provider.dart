import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/Constants/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client_provider.g.dart';

@riverpod
Dio Client (Ref ref) {
  return Dio(BaseOptions(
    baseUrl: baseUrl,
    headers: {
      'content-Type':'application/json',
      'accept':'application/json'
    }
  ));
}
