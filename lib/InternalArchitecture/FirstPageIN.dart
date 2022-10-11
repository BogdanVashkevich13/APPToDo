import 'package:apptodo/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Authorization/autorization.dart';
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
                  decoration: BoxDecoration(
                    color: ColorsSet.black,
                    shape: BoxShape.circle,
                  ),
                  margin: EdgeInsets.only(top: 100),
                  child: Center(
                    child: Text(
                        'A',
                      style: TextStyle(
                        fontSize: 30,
                        color: ColorsSet.white,
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 12),
                  Container(
                   child: Center(
                    child:  Text('Alex Mitchell',
                      style: TextStyle(
                        color: ColorsSet.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                   ),
                  ),
                SizedBox( height: 70,),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: ListTile(
                  leading: Image.asset('images/Watch.png'),
                  title: Text('Productiviti'),
                  onTap: () {},
                ),
                ),
                SizedBox( height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: ListTile(
                    leading: Image.asset('images/Folder.png'),
                    title: Text('Projects'),
                    onTap: () {},
                  ),
                ),
                SizedBox( height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: ListTile(
                    leading: Image.asset('images/Settings.png'),
                    title: Text('Settings'),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 220,),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: ListTile(
                    leading: Image.asset('images/SingOut.png'),
                    title: Text('Sing Out'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => const autorization(),
                          )
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
            ],
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

