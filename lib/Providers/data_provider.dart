import 'package:apptodo/Providers/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final DataManagerProvider = StateNotifierProvider((ref) => DataManager());

class DataManager extends StateNotifier<States> {
  DataManager() : super(States(null, null,));

  void setDate(DateTime? date) {
    state =  States( date,  state.text);
  }

  void emailValidate(String text, DateTime? dateTime) {
   if (DateTime == null){
     state == States(state.date, text);
   }else {
     state = States(dateTime, text,);
   }
  }
}
