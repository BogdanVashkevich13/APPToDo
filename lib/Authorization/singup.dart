import 'package:apptodo/Providers/email_provider_validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Colors/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../InternalArchitecture/FirstPageIN.dart';
import '../Providers/name_provider_validate.dart';
import '../Providers/password_provider_validation.dart';

class singUpPage extends ConsumerWidget {
  const singUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void emailValidate(WidgetRef ref, email){
      ref.read(EmailManagerProvider.notifier).emailValidate(email);
    };
    void passwordValidate(WidgetRef ref, password){
      ref.read( PassworManagerProvider.notifier).passwordValidate(password);
    };
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  ColorsSet.yellow,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            }
        ),
        title: const Text('Sing In', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      backgroundColor: ColorsSet.black,
      body: Container(
        height: 1000,
        padding: const EdgeInsets.only(right:16, left: 16),
        color: ColorsSet.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Padding(
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
              decoration: const BoxDecoration(
                  color: ColorsSet.gray,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: ColorsSet.gray),
                  ),
                  border: InputBorder.none,
                  errorText: '${ref.watch(EmailManagerProvider)}',
                  errorStyle: TextStyle(
                    color: '${ref.watch(EmailManagerProvider)}'
                        != 'Correct'
                        ? Colors.red : Colors.green,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                onSubmitted: (email) {
                  emailValidate(ref, email);
                },
                style: const TextStyle(fontSize: 16, color: ColorsSet.white),
                cursorColor: Colors.white,
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(top: 16, bottom: 8, left: 32 ),
              child: Text(
                'PASSWORD',
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
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  border: InputBorder.none,
                  errorText: '${ref.watch(PassworManagerProvider)}',
                  errorStyle: TextStyle(
                    color: '${ref.watch(PassworManagerProvider)}'
                        != 'Correct'
                        ? Colors.red : Colors.green,
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                onSubmitted: (password) {
                  passwordValidate(ref, password);
                },
                style: const TextStyle(fontSize: 16, color: ColorsSet.white),
                cursorColor: Colors.white,
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(top: 16, bottom: 8, left: 32 ),
              child: Text(
                'NAME',
                style: TextStyle(
                  fontSize: 14,
                  color: ColorsSet.grey_text,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: ColorsSet.gray,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorText: '${ref.watch(NameManagerProvider)}',
                  errorStyle: TextStyle(
                    color: '${ref.watch(NameManagerProvider)}'
                        != 'Correct'
                        ? Colors.red : Colors.green,
                  ),
                ),
                keyboardType: TextInputType.name,
                onSubmitted: (name) {
                  passwordValidate(ref, name);
                 },
                style: const TextStyle(fontSize: 16, color: ColorsSet.white),
                cursorColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 115,
            ),
            SizedBox(
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(60, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: '${ref.watch(PassworManagerProvider)}' == 'Correct'
                          && '${ref.watch(EmailManagerProvider)}' == 'Correct'
                          ? (){Navigator.pop(context,
                          MaterialPageRoute(
                              builder: (context) => FirstPageIn()));} : null,
                      child: const Text('SIGN IN'),
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