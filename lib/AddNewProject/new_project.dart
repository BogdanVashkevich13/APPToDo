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
                     colorProjects(ref, ColorsSet.circle_yellow, const IconData(), );
                   },
                   icon:
               ),
             ],
           ),
          ],
        ),
    ),
    );
  }
}
