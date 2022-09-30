import 'package:apptodo/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


Widget buildMenuItem({
  required String text,
  required Image image,
}) {
  final color = ColorsSet.white;
  final hoverColor = ColorsSet.white;
  // final Images = Image.asset('images/Folder.png');
  // final Images2 = Image.asset('images/Watch.png');
  // final Images3 = Image.asset('images/Settings.png');
  return ListTile(
     leading: image,
    title: Text(text, style: TextStyle(color: ColorsSet.white),
    ),
    hoverColor: hoverColor,
    onTap: () {},
  );
}

class NavigationDrawerWiget extends StatelessWidget {
  final padding = EdgeInsets.only(left: 30);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: ColorsSet.yellow,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Productivity',
              image: Image.asset('images/Folder.png'),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Project',
              image: Image.asset('images/Watch.png'),
            ),
            const SizedBox(height:10),
            buildMenuItem(
              text: 'Settings',
              image: Image.asset('images/Settings.png'),
            ),
          ],
        ),
      ),
    );
  }
}

