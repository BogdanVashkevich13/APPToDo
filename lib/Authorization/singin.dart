import 'package:apptodo/Colors/colors.dart';
import 'package:flutter/material.dart';

class AuthorizationPage extends StatefulWidget{
  const AuthorizationPage ({Key? key}) : super (key: key);

  @override
  // _AuthorizationPageState createState() => _AuthorizationPageState();
    _AuthorizationPageState createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget _input(TextEditingController controller, bool obscure) {
      return Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
        child: TextFormField(
            controller: controller,
            cursorColor: ColorsSet.white,
            obscureText: obscure,
            style: const TextStyle(
                fontSize: 16, color: ColorsSet.white, height: 0),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorsSet.gray),
                borderRadius: BorderRadius.circular(13),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorsSet.gray),
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            validator: (value){
              if (value!.isEmpty) return 'Пожалуйста введите свой Email';

              String p = '[a-zA-Z0-9+.\_\%-+]{1,256}@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(.[a-zA-Z0-9][a-zA-Z0-9-]{0,25})+';
              RegExp regExp = RegExp(p);

              if (regExp.hasMatch(value)) return null;

              return 'Это не E-mail';
            }
        ),
      );
    }
    Widget _button(String text, void func()) {
      return ElevatedButton(onPressed: () {
        func();
      },
        style: ElevatedButton.styleFrom(
          onPrimary: ColorsSet.white,
          primary: ColorsSet.yellow,
        ),
        child: Text(text, style: const TextStyle(
          color: Colors.black,
        ),
        ),
      );
    }
    Widget _form(String label, void func()) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 285, top: 5, left: 25),
              child: Text('EMAIL', style: TextStyle(
                color: ColorsSet.grey_text,
                fontSize: 14,
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: _input(_emailController, false),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 285, top: 5, left: 25),
              child: Text('PASSWORD', style: TextStyle(
                color: ColorsSet.grey_text,
                fontSize: 14,
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: _input(_passwordController, true),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(top: 0, left: 10, right: 10),
              child: Container(
                height: 30,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: _button(label, func),
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 214, 10, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/page 1');
          },
        ),
        title: const Text('Sing In', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      backgroundColor: ColorsSet.black,
      body: Column(
        children: [
          _form('SING IN', () {}),
        ],
      ),
    );
  }

// String _validateEmail(String value) async {
//   if (value.isEmpty) {
//     return 'Email cannot be empty';
//   } else if (!_emailController.text.contains('@')) {
//     return 'Invalid email address';
//   } else {
//     return null;
//   }
}
