import 'package:flutter/material.dart';
import 'package:lab12/Classes/Machine.dart';
import 'package:lab12/Classes/Resources.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
         Container(
           color: Colors.lightGreenAccent,
           child:  Column(
             children: [
               SizedBox(height: 30,),
               Padding(
                 padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: [
                     Text('Water: '),
                     Text('Milk: '),
                     Text('beans: '),
                   ],
                 ),
               ),

               Padding(
                 padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                 child: Container(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Coffee Maker',
                           style:
                           TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                       Text(
                         'Your money: ',
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                   height: 150,
                   width: 400,
                   decoration: BoxDecoration(
                     color: Colors.limeAccent,
                   ),
                   //height: 250,
                 ),
               ),

             ],
           ),
         )

        ],
      ),
    );
  }
}
