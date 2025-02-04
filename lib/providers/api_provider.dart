

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garrage_nepal/services/api_service.dart';

final apiProvider = FutureProvider((ref){
  return getPosts();
});