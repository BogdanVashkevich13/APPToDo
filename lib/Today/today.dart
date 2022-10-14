import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Colors/colors.dart';

class Today extends ConsumerWidget {
  const Today({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorsSet.black,
      appBar: AppBar(
        title: Text('Today'),
        centerTitle: true,
        backgroundColor: ColorsSet.yellow,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/StartScreen');
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/AddToDo');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: Container(
        constraints: BoxConstraints(
          maxWidth: double.infinity,
          maxHeight: 150,
        ),
        color: ColorsSet.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 30, bottom: 10),
              child: Text(
                'OVERDUE',
                style: TextStyle(
                  color: ColorsSet.grey_text,
                ),
              ),
            ),
            Divider(
              color: ColorsSet.gray,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
              child: Text(
                'TODOS',
                style: TextStyle(
                  color: ColorsSet.grey_text,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
