import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Colors/colors.dart';

class AddToDo extends ConsumerWidget {
  const AddToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: ColorsSet.black,
      body: Container(
        height: 40,
        width: 300,
        child: Padding(
          padding: MediaQuery.of(context).padding,
          child: Row(
            children: [
              IconButton(onPressed: () {  Navigator.pushNamed(context, '/StartScreen'
              );
              },
                icon: Icon(Icons.close),
                iconSize: 25,
                color: ColorsSet.white,
              ),
              Container(
                child: Center(
                  child: Text('Add New ToDo',
                  style: TextStyle(
                    color: ColorsSet.white,
                    fontSize: 25,
                  ),
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
