import 'package:flutter/material.dart';
import 'package:lab12/Classes/Enums.dart';
import 'package:lab12/Classes/Machine.dart';
import 'package:lab12/Classes/Resources.dart';

class ControlPanel extends StatefulWidget {
  final CoffeeMachine machine;
  const ControlPanel({Key? key, required this.machine}) : super(key: key);


  @override
  State<ControlPanel> createState() => _ControlPanel();
}

class _ControlPanel extends State<ControlPanel> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            color: Colors.lightGreenAccent,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.limeAccent[100],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.stret,
                      children: const [
                        Text('Resources: ', style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Text('Money: ', style: TextStyle(fontSize: 20),),
                        Text('Water: ', style: TextStyle(fontSize: 20),),
                        Text('Milk: ', style: TextStyle(fontSize: 20),),
                        Text('Beans: ', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
         SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.black12,
          ),
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Put beans'),
            ),
          ),
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Put water'),
            ),
          ),
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Put milk'),
            ),
          ),
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Put cash'),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              ElevatedButton(onPressed: () {widget}, child: Icon(Icons.add), style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),),),
              ElevatedButton(onPressed: () {}, child: Icon(Icons.remove), style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),),),

            ],
          )
        ],
      ),
    );
  }
}
