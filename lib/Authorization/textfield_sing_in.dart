import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Colors/colors.dart';

class textFieldSingIn extends StatefulWidget {
  const textFieldSingIn({Key? key}) : super(key: key);

  @override
  State<textFieldSingIn> createState() => _textFieldSingInState();
}

class _textFieldSingInState extends State<textFieldSingIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: ColorsSet.gray,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: TextField(
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
        ),
      );
  }
}
