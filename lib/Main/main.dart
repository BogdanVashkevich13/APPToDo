import 'package:apptodo/Authorization/autorization.dart';
import 'package:apptodo/Authorization/sing_in.dart';
import 'package:apptodo/Authorization/singup.dart';
import 'package:flutter/material.dart';

import '../Authorization/singin.dart';
import '../InternalArchitecture/FirstPageIN.dart';
void main() => runApp(const MaterialApp(
  home: UserPanel(),
));
class  UserPanel extends StatelessWidget {
  const  UserPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'ToDo',
     theme: ThemeData(
       appBarTheme: const AppBarTheme(color: Color.fromRGBO(255, 214, 10, 1),
       ),
       primaryColor: Colors.amber,
     ),
     initialRoute: '/page 1',
     routes: {
       '/page 1': (context) => autorization(),
       '/page 2': (context) => loginPage(),
       '/page 3': (context) => RegistrationPage(),
       '/page 4': (context) => FirstPageIn(),
     },
   );
}
}