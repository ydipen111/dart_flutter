import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/material.dart';

part 'validat_provider.g.dart';

@riverpod
class ValidatProvider extends _$ValidatProvider {
  @override
  AutovalidateMode build() {
    return AutovalidateMode.disabled;
  }
  void changeMode(){
    state = AutovalidateMode.onUserInteraction;
  }
}

@riverpod
class PassShow extends _$PassShow {
  @override
  bool build({required int id}) {
    return false;
  }
  void change(){
    state = !state;
  }
}
