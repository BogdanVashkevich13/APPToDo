import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Colors/colors.dart';
class Projects extends ConsumerWidget {
  Projects({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorsSet.black,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor: ColorsSet.yellow,
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/StartScreen');
            }),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/AddNewProjects');
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body:
      Container(
        decoration: const BoxDecoration(
          color: ColorsSet.gray,
          borderRadius: BorderRadius.all(Radius.circular(16)
          ),
        ),
        height: 280,
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/Personal');
              },
              leading: Image.asset('images/yellow circle.png'),
              title: const Text('Personal',
                style: TextStyle(
                    color: ColorsSet.white
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Divider(color: ColorsSet.grey_text),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/Work');
              },
              leading: Image.asset('images/orange circle.png'),
              title: const Text('Work',
                style: TextStyle(
                    color: ColorsSet.white
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Divider(color: ColorsSet.grey_text),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/Design');
              },
              leading: Image.asset('images/purple circle.png'),
              title: const Text('Design',
                style: TextStyle(
                    color: ColorsSet.white
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Divider(color: ColorsSet.grey_text),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/Study');
              },
              leading: Image.asset('images/green circle.png'),
              title: const Text('Study',
                style: TextStyle(
                    color: ColorsSet.white
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/AddNewProjects');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}