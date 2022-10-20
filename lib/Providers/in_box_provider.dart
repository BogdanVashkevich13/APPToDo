import 'package:apptodo/Colors/colors.dart';
import 'package:apptodo/Providers/data_provider.dart';
import 'package:apptodo/Providers/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final InboxManagerProvider = StateNotifierProvider((ref) => InboxProvider());

class InboxProvider extends StateNotifier<States> {
  InboxProvider() : super(States(null, null, null, null));

  final ScrollController _scrollController = ScrollController();

  void setProject(WidgetRef ref, project, color) {
    ref.read(DataManagerProvider.notifier).setProject(project, color);
  }
  void showInbox(BuildContext context, WidgetRef ref) {
  showModalBottomSheet(
    backgroundColor: ColorsSet.gray,
      context: context,
      builder: (context) =>
          Container(
            width: 300,
            height: 400,
            color: ColorsSet.gray,
            alignment: Alignment.center,
            child: ListView(
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, 
                        child: const Text(
                            'Cancel',
                          style: TextStyle(
                            color: ColorsSet.grey_text,
                          ),
                        ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 75),
                      child:  Text(
                          'Projects',
                        style: TextStyle(
                          color: ColorsSet.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(color: ColorsSet.white),
                Row(
                  children:  [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 15, top: 15),
                      child: Image.asset('images/Inbox.png'),
                    ),
                    const Text(
                      'Inbox',
                      style: TextStyle(
                        color: ColorsSet.white,
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(left: 40),
                  child: Divider(color: ColorsSet.white),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: ColorsSet.gray,
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                      onTap: () {
                        Navigator.pop(context,);
                        },
                        leading: Image.asset('images/yellow circle.png'),
                        title: const Text('Personal',
                          style: TextStyle(
                        color: ColorsSet.white
                    ),
                  ),
                ),
                      const Padding(
                        padding: EdgeInsets.only(left: 55),
                        child: Divider(color: ColorsSet.white),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context,);
                        },
                        leading: Image.asset('images/orange circle.png'),
                        title: const Text('Work',
                          style: TextStyle(
                              color: ColorsSet.white
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 55),
                        child: Divider(color: ColorsSet.white),
                      ),
                      ListTile(
                        onTap: (){
                          Navigator.pop(context,);
                        },
                        leading: Image.asset('images/purple circle.png'),
                        title: const Text('Design',
                          style: TextStyle(
                              color: ColorsSet.white
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 55),
                        child: Divider(color: ColorsSet.white),
                      ),
                      ListTile(
                        onTap: (){
                          Navigator.pop(context,);
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
  );
  }
}