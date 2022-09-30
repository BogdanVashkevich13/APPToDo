import 'package:apptodo/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../Drawer/navigation_drawer.dart';

class FirstPageIn extends StatefulWidget {
  const FirstPageIn({Key? key}) : super(key: key);

  @override
  State<FirstPageIn> createState() => _FirstPageInState();
}

class _FirstPageInState extends State<FirstPageIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavigationDrawerWiget(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 214, 10, 1),
        actions: [
          IconButton( icon: Icon(Icons.search),
          color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: ColorsSet.black,
    );
  }
}

