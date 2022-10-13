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
              SizedBox(height: 35,),
              Container(
                decoration: BoxDecoration(
                color: ColorsSet.gray,
                  borderRadius: BorderRadius.all(Radius.circular(16)
                  ),
                ),
                height: 210,
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: Image.asset('images/Inbox.png'),
                      title: Text('inbox',
                        style: TextStyle(
                          color: ColorsSet.white
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 50),
                      child: Divider(color: ColorsSet.grey_text),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Image.asset('images/Today.png'),
                      title: Text('today',
                        style: TextStyle(
                            color: ColorsSet.white
                        ),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Divider(color: ColorsSet.grey_text),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Image.asset('images/Upcoming.png'),
                      title: Text('upcoming',
                        style: TextStyle(
                            color: ColorsSet.white
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36,),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'PROJECTS',
                      style: TextStyle(color: ColorsSet.grey_text),
                    ),
                    Icon(Icons.keyboard_arrow_up, color:ColorsSet.grey_text),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorsSet.black,
                  borderRadius: BorderRadius.all(Radius.circular(16)
                  ),
                ),
                height: 210,
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

