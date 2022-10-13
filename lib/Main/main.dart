import 'package:apptodo/Authorization/autorization.dart';
import 'package:apptodo/Authorization/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../AddToDo/add_to_do.dart';
import '../Authorization/sing_in_page.dart';
import '../HomeScreen/homescreen.dart';
import '../InternalArchitecture/FirstPageIN.dart';

void main()  {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'ToDo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: '/',
        routes: {
          '/':(BuildContext context) => const startScreen(),
          '/Authorization': (BuildContext context) => const autorization(),
          '/SingIn' : (BuildContext context) => const singInPage(),
          '/SingUp' : (BuildContext context) => const singUpPage(),
          '/StartScreen' : (BuildContext context) => const FirstPageIn(),
          '/AddToDo': (BuildContext context) => const AddToDo(),
        }
    );
  }
}






















// void main() => runApp(const MaterialApp(
//   home: UserPanel(),
// ));
// class  UserPanel extends StatelessWidget {
//   const  UserPanel({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'ToDo',
//      theme: ThemeData(
//        appBarTheme: const AppBarTheme(color: Color.fromRGBO(255, 214, 10, 1),
//        ),
//        primaryColor: Colors.amber,
//      ),
//      initialRoute: '/page 1',
//      routes: {
//        '/page 1': (context) => const autorization(),
//        '/page 2': (context) => const singInPage(),
//        '/page 3': (context) => RegistrationPage(),
//        '/page 4': (context) => const FirstPageIn(),
//      },
//    );
// }
// }