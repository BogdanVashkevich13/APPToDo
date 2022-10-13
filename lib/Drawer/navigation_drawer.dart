import 'package:apptodo/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Authorization/autorization.dart';

class NavigationDrawerWiget extends ConsumerWidget {
  NavigationDrawerWiget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Drawer(
      child: Container(
        color: ColorsSet.yellow,
        child: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                decoration: const BoxDecoration(
                  color: ColorsSet.black,
                  shape: BoxShape.circle,
                ),
                margin: const EdgeInsets.only(top: 100),
                child: const Center(
                  child: Text(
                    'A',
                    style: TextStyle(
                      fontSize: 30,
                      color: ColorsSet.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                child: const Center(
                  child:  Text('Alex Mitchell',
                    style: TextStyle(
                      color: ColorsSet.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox( height: 70,),
              Container(
                padding: const EdgeInsets.only(left: 14),
                child: ListTile(
                  leading: Image.asset('images/Watch.png'),
                  title: const Text('Productiviti'),
                  onTap: () {},
                ),
              ),
              const SizedBox( height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 14),
                child: ListTile(
                  leading: Image.asset('images/Folder.png'),
                  title: const Text('Projects'),
                  onTap: () {},
                ),
              ),
              const SizedBox( height: 10,),
              Container(
                padding: EdgeInsets.only(left: 14),
                child: ListTile(
                  leading: Image.asset('images/Settings.png'),
                  title: Text('Settings'),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 220,),
              Container(
                padding: EdgeInsets.only(left: 14),
                child: ListTile(
                  leading: Image.asset('images/SingOut.png'),
                  title: const Text('Sing Out'),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => const autorization(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// children: const [
// UserAccountsDrawerHeader(
// accountName: Text('Alex Mitchel')
// , accountEmail: null,
// currentAccountPicture: CircleAvatar(
// backgroundImage: AssetImage('images/Photo.png'),
// ),
// ),
// ListTile(
// title: Text(''),
// trailing: AssetImage('images/Photo.png'),
// ),
// ],