import 'package:flutter_riverpod/flutter_riverpod.dart';


final EmailManagerProvider = StateNotifierProvider((ref) => EmailManager());

class EmailManager extends StateNotifier<String?> {
  EmailManager() : super('');

  void emailValidate(String? value) {
    if (value != null) {
      if (value.length > 5 && value.contains('@') && value.contains('.')) {
        state = 'Correct';
      }
      else {
        state = 'Invalid email';
      }
    }
  }
}
