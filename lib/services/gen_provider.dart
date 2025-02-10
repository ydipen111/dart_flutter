import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/models/comments.dart';  // Corrected typo
import 'package:garrage_nepal/services/api_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gen_provider.g.dart';

@riverpod
Future<List<Comment>> getComments(Ref ref) async {
  return gettingData();
}
