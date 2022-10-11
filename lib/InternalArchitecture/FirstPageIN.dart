import 'package:apptodo/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Drawer/navigation_drawer.dart';

class FirstPageIn extends ConsumerWidget {
  const FirstPageIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: Center(
        child: Container(
          color: ColorsSet.yellow,
          margin: EdgeInsets.only(right: 90) ,
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: ColorsSet.black,
                    shape: BoxShape.circle,
                  ),
                  margin: EdgeInsets.only(top: 100),
                  child: Center(
                    child: Image.asset('Image/A.png'),
                  ),
                ),
                 SizedBox(height: 12),
                  Text('Alex Mitchell',
                  style: TextStyle(
                   color: ColorsSet.black,
                   fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 214, 10, 1),
        actions: [
          IconButton( icon:  Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: ColorsSet.black,
    );
  }
}

