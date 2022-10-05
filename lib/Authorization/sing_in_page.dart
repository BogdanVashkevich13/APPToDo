import 'package:apptodo/Authorization/autorization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Colors/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/email_provider_validation.dart';
import '../Providers/password_provider_validation.dart';

class singInPage extends ConsumerWidget {
  singInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void emailValidate(WidgetRef ref, email){
      ref.read( EmailManagerProvider.notifier).emailValidate(email);
    };
    void passwordValidate(WidgetRef ref, password){
      ref.read( PassworManagerProvider.notifier).passwordValidate(password);
    };
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 214, 10, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: '${ref.watch(PassworManagerProvider)}' == 'correct' && '${ref.watch(EmailManagerProvider)}' == 'correct' ? (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => autorization()));} : null,
        ),
        title: const Text('Sing In', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      backgroundColor: ColorsSet.black,
      body: Container(
        height: 60,
        padding: const EdgeInsets.only(right:16, left: 16),
        color: ColorsSet.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
                padding: EdgeInsets.only(top: 32, bottom: 8, left: 32 ),
              child: Text(
                'EMAIL',
                style: TextStyle(
                  fontSize: 14,
                   color: ColorsSet.grey_text,
                ),
              ),
            ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: ColorsSet.gray,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorsSet.gray),
                  borderRadius: BorderRadius.circular(13),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorsSet.gray),
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
