import 'dart:async';

import 'package:apptodo/Colors/colors.dart';
import 'package:flutter/material.dart';

import '../Authorization/autorization.dart';

class startScreen extends StatefulWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  State<startScreen> createState() => _startScreenState();
}
class _startScreenState extends State<startScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () {Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const autorization()));}
    );
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorsSet.yellow,
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
                child: Image.asset('images/Lines.png'),
            ),
            Positioned(
              child: Image.asset('images/ToDo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
