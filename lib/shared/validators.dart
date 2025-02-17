import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'validators.g.dart';

@riverpod
class PassShow extends _$PassShow {
  @override
  bool build({required int id}) {
    return true;
  }

  void toggle() {
    state = !state;
  }
}