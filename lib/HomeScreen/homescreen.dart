import 'package:flutter/material.dart';

class homescreen extends StatelessWidget{
   const homescreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color.fromRGBO(255, 214, 10, 1),
       //decoration
       body: Container(
         child: Stack(
           alignment: AlignmentDirectional.center,
           children: [
             Positioned(
                 child: Container(
                   child: Image.asset('images/Lines.png'),
                 )
             ),
             Positioned(
               child: Image.asset('images/ToDo.png'),
               // left: 109,
               // right: 109,
               // top: 327 ,
               // bottom: 327 ,
             ),
           ],
         ),
       ),
     );
   }
}
