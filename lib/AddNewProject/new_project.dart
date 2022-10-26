import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Colors/colors.dart';
import 'add_project_provider.dart';

class AddNewProjects extends ConsumerWidget {
  const AddNewProjects({Key? key}) : super(key: key);


  void textProjects(WidgetRef ref, text) {
    ref.watch(addProjectsProvider.notifier).textProjects(text);
  }

  void colorProjects(WidgetRef ref, color, icon) {
    ref.watch(addProjectsProvider.notifier).colorProjects(color, icon);
  }

  static const IconData check_circle_sharp = IconData(0xe856, fontFamily: 'MaterialIcons');
  static const IconData circle = IconData(0xe163, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: ColorsSet.black,
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 25,),
              child: Row(
                children: [
                  IconButton(onPressed: () {  Navigator.pushNamed(context, '/StartScreen'
                  );
                    },
                    icon: const Icon(Icons.close),
                    iconSize: 28,
                    color: ColorsSet.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.only( left: 75),
                    child: Text('Add New Project',
                      style: TextStyle(
                        color: ColorsSet.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 8, left: 16),
             child: Text(
                 'NAME',
               style: TextStyle(
                 fontSize: 14,
                 color: ColorsSet.grey_text,
               ),
             ),
            ),
             Container(
              decoration: const BoxDecoration(
                  color: ColorsSet.gray,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 40,
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorsSet.gray),
                  ),
                  border: InputBorder.none,
              ),
                cursorColor: ColorsSet.white,
                style: TextStyle(fontSize: 16, color: ColorsSet.white),
            ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 8, left: 16),
              child: Text(
                'COLOR',
                style: TextStyle(
                  fontSize: 14,
                  color: ColorsSet.grey_text,
                ),
              ),
            ),
           Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               IconButton(
                   onPressed: () {
                     colorProjects(ref, ColorsSet.circle_yellow,
                         const IconData(0xe163, fontFamily: 'MaterialIcons'), );
                   },
                   icon: Icon(
                   ref.watch(addProjectsProvider).color == ColorsSet.circle_yellow
                       ? const IconData(0xe856, fontFamily: 'MaterialIcons')
                       : const IconData(0xe163, fontFamily: 'MaterialIcons'),
                     color: ColorsSet.circle_yellow,
                     size: 25,
                   ),
                 splashRadius: 0.1,
               ),
               IconButton(
                 onPressed: () {
                   colorProjects(ref, ColorsSet.circle_green,
                     const IconData(0xe163, fontFamily: 'MaterialIcons'), );
                 },
                 icon: Icon(
                   ref.watch(addProjectsProvider).color == ColorsSet.circle_yellow
                       ? const IconData(0xe856, fontFamily: 'MaterialIcons')
                       : const IconData(0xe163, fontFamily: 'MaterialIcons'),
                   color: ColorsSet.circle_green,
                   size: 25,
                 ),
                 splashRadius: 0.1,
               ),
               IconButton(
                 onPressed: () {
                   colorProjects(ref, ColorsSet.circle_red,
                     const IconData(0xe163, fontFamily: 'MaterialIcons'), );
                 },
                 icon: Icon(
                   ref.watch(addProjectsProvider).color == ColorsSet.circle_yellow
                       ? const IconData(0xe856, fontFamily: 'MaterialIcons')
                       : const IconData(0xe163, fontFamily: 'MaterialIcons'),
                   color: ColorsSet.circle_red,
                   size: 25,
                 ),
                 splashRadius: 0.1,
               ),
               IconButton(
                 onPressed: () {
                   colorProjects(ref, ColorsSet.circle_orange,
                     const IconData(0xe163, fontFamily: 'MaterialIcons'), );
                 },
                 icon: Icon(
                   ref.watch(addProjectsProvider).color == ColorsSet.circle_yellow
                       ? const IconData(0xe856, fontFamily: 'MaterialIcons')
                       : const IconData(0xe163, fontFamily: 'MaterialIcons'),
                   color: ColorsSet.circle_orange,
                   size: 25,
                 ),
                 splashRadius: 0.1,
               ),
               IconButton(
                 onPressed: () {
                   colorProjects(ref, ColorsSet.circle_purple,
                     const IconData(0xe163, fontFamily: 'MaterialIcons'), );
                 },
                 icon: Icon(
                   ref.watch(addProjectsProvider).color == ColorsSet.circle_yellow
                       ? const IconData(0xe856, fontFamily: 'MaterialIcons')
                       : const IconData(0xe163, fontFamily: 'MaterialIcons'),
                   color: ColorsSet.circle_purple,
                   size: 25,
                 ),
                 splashRadius: 0.1,
               ),
               IconButton(
                 onPressed: () {
                   colorProjects(ref, ColorsSet.circle_cian,
                     const IconData(0xe163, fontFamily: 'MaterialIcons'), );
                 },
                 icon: Icon(
                   ref.watch(addProjectsProvider).color == ColorsSet.circle_yellow
                       ? const IconData(0xe856, fontFamily: 'MaterialIcons')
                       : const IconData(0xe163, fontFamily: 'MaterialIcons'),
                   color: ColorsSet.circle_cian,
                   size: 25,
                 ),
                 splashRadius: 0.1,
               ),
               IconButton(
                 onPressed: () {
                   colorProjects(ref, ColorsSet.circle_blue,
                     const IconData(0xe163, fontFamily: 'MaterialIcons'), );
                 },
                 icon: Icon(
                   ref.watch(addProjectsProvider).color == ColorsSet.circle_yellow
                       ? const IconData(0xe856, fontFamily: 'MaterialIcons')
                       : const IconData(0xe163, fontFamily: 'MaterialIcons'),
                   color: ColorsSet.circle_blue,
                   size: 25,
                 ),
                 splashRadius: 0.1,
               ),
               IconButton(
                 onPressed: () {
                   colorProjects(ref, ColorsSet.circle_dark_blue,
                     const IconData(0xe163, fontFamily: 'MaterialIcons'), );
                 },
                 icon: Icon(
                   ref.watch(addProjectsProvider).color == ColorsSet.circle_yellow
                       ? const IconData(0xe856, fontFamily: 'MaterialIcons')
                       : const IconData(0xe163, fontFamily: 'MaterialIcons'),
                   color: ColorsSet.circle_dark_blue,
                   size: 25,
                 ),
                 splashRadius: 0.1,
               ),
               IconButton(
                 onPressed: () {
                   colorProjects(ref, ColorsSet.circle_pink,
                     const IconData(0xe163, fontFamily: 'MaterialIcons'), );
                 },
                 icon: Icon(
                   ref.watch(addProjectsProvider).color == ColorsSet.circle_yellow
                       ? const IconData(0xe856, fontFamily: 'MaterialIcons')
                       : const IconData(0xe163, fontFamily: 'MaterialIcons'),
                   color: ColorsSet.circle_pink,
                   size: 25,
                 ),
                 splashRadius: 0.1,
               ),
             ],
           ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(360, 40),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {},
                child: const Text('Add Project'),
              ),
            ),
          ],
        ),
    ),
    );
  }
}
