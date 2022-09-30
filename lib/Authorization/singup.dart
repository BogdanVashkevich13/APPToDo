import 'package:apptodo/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RegistrationPage extends StatefulWidget{
  RegistrationPage ({Key? key}) : super (key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage>{
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _NameController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    Widget _input(  TextEditingController controller, bool obscure){
      return Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
        child: TextField(
          controller: controller,
          cursorColor: ColorsSet.white,
          obscureText: obscure,
          style: TextStyle(fontSize: 16, color: ColorsSet.white, height: 0),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsSet.gray),
              borderRadius: BorderRadius.circular(13),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsSet.gray),
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
      );
    }
    Widget _button (String text, void func()){
      return ElevatedButton(onPressed: () {func();},
        child: Text(text, style: TextStyle(
          color: Colors.black,
        ),
        ),
        style: ElevatedButton.styleFrom(
          onPrimary: ColorsSet.white,
          primary: ColorsSet.yellow,
        ),
      );
    }

    Widget _form(String label, void func()){
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
            ),
            Padding(
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
            SizedBox(
              height: 5,
            ),
            Padding(
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
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.only(right: 285, top: 5, left: 25),
              child: Text('NAME', style: TextStyle(
                color: ColorsSet.grey_text,
                fontSize: 14,
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: _input(_NameController, false),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:EdgeInsets.only(top: 0, left: 10, right: 10) ,
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
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
        title: Text('Sing Up', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      backgroundColor: ColorsSet.black,
      body: Column(
        children: [
          _form('SING UP',(){}),
        ],
      ) ,
    );
  }
}