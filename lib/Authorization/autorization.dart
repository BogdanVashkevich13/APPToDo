
import 'package:apptodo/Colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class autorization extends ConsumerWidget {
  const autorization({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      final ScrollController _scrollController = ScrollController();
      return Scaffold(
        backgroundColor: ColorsSet.black,
        body: Center(
          child: Container(
            // padding: const EdgeInsets.symmetric(horizontal: 0) ,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Image.asset('images/ToDo.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, '/SingIn'
                      );
                    },
                      child: Text('SING IN') ,
                      style: ElevatedButton.styleFrom(
                        //maximumSize: Size(343, 40),
                          onPrimary: Colors.black,
                          primary:  ColorsSet.yellow,
                          padding: const EdgeInsets.fromLTRB(160, 13, 160, 12)
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                  ],
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/SingUp'
                  );
                }, child: Text('SING UP'),
                  style: ElevatedButton.styleFrom(
                      onPrimary: ColorsSet.white,
                      primary: ColorsSet.gray,
                      padding: const EdgeInsets.fromLTRB(160, 13, 160, 10)
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 1,
                  width: double.maxFinite,
                  color: ColorsSet.gray,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(ColorsSet.gray),
                          foregroundColor: MaterialStateProperty.all(ColorsSet.white),
                          maximumSize: MaterialStateProperty.all(Size(375, 40)),
                          alignment: Alignment.center,
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/StartScreen'
                          );
                        }, child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(80, 10, 0, 10),
                            child: Center(
                              child: Image.asset('images/Google.png'),
                            ),
                          ),
                          SizedBox(
                            width: 0,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(10, 12, 40, 10),
                                child: Center(
                                  child: Text('CONTINUE WITH GOOGLE'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(ColorsSet.gray),
                          foregroundColor: MaterialStateProperty.all(ColorsSet.white),
                          maximumSize: MaterialStateProperty.all(Size(375, 40)),
                          alignment: Alignment.center,
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/StartScreen'
                          );
                        },
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(80, 10, 0, 10),
                              child: Center(
                                child: Image.asset('images/Apple.png'),
                              ),
                            ),
                            SizedBox(
                              width: 0,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.fromLTRB(10, 12, 40, 10),
                                  child: Center(
                                    child: Text('CONTINUE WITH APPLE'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(ColorsSet.gray),
                          foregroundColor: MaterialStateProperty.all(ColorsSet.white),
                          maximumSize: MaterialStateProperty.all(Size(375, 40)),
                          alignment: Alignment.center,
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/StartScreen'
                          );
                        }, child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(80, 10, 0, 10),
                            child: Center(
                              child: Image.asset('images/FaceBook.png'),
                            ),
                          ),
                          SizedBox(
                            width: 0,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(10, 12, 40, 10),
                                child: Center(
                                  child: Text('CONTINUE WITH FACEBOOK'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }






