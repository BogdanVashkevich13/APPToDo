import 'package:flutter_riverpod/flutter_riverpod.dart';


final NameManagerProvider = StateNotifierProvider((ref) => NameManager());

class NameManager extends StateNotifier<String?> {
  NameManager() : super('');

  void emailValidate(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        state = 'Correct';
      }
      else {
        state = 'Invalid Name';
      }
    }
  }
}