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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/AddToDo'
          );
        },
        backgroundColor: ColorsSet.yellow,
        child: Icon(Icons.add),
      ),
      drawer: NavigationDrawerWiget(),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20),
                child: Text('Hello Alex!',
                  style: TextStyle(
                    color: ColorsSet.white,
                    fontSize:22,
                  ),
                ),
              ),
              const SizedBox(height: 35,),
              Container(
                decoration: const BoxDecoration(
                color: ColorsSet.gray,
                  borderRadius: BorderRadius.all(Radius.circular(16)
                  ),
                ),
                height: 210,
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/Inbox');
                      },
                      leading: Image.asset('images/Inbox.png'),
                      title: const Text('Inbox',
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
                        Navigator.pushNamed(context, '/Today');
                      },
                      leading: Image.asset('images/Today.png'),
                      title: const Text('Today',
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
                        Navigator.pushNamed(context, '/Upcoming');
                      },
                      leading: Image.asset('images/Upcoming.png'),
                      title: const Text('Upcoming',
                        style: TextStyle(
                            color: ColorsSet.white
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'PROJECTS',
                      style: TextStyle(color: ColorsSet.grey_text),
                    ),
                    Icon(Icons.keyboard_arrow_up, color:ColorsSet.grey_text),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: ColorsSet.gray,
                  borderRadius: BorderRadius.all(Radius.circular(16)
                  ),
                ),
                height: 280,
                padding: const EdgeInsets.only(bottom: 15),
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
                      title: const Text('Desing',
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
            ],
          ),
        ),
      appBar: AppBar(
        backgroundColor: ColorsSet.yellow,
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