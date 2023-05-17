import 'package:flutter/material.dart';
import 'package:lab12/Classes/Enums.dart';
import 'package:lab12/Classes/Machine.dart';
import 'package:lab12/Classes/Resources.dart';

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  CoffeeTypes? _character = CoffeeTypes.espresso;

// class _Display2 extends StatefulWidget {
//   const Display({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('Water: '),
                      Text('Milk: '),
                      Text('beans: '),
                    ],
                  ),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Coffee Maker',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Text(
                          'Your money: ',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  // height: 1000,
                  //width: 500,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Capuccino'),
                        leading: Radio<CoffeeTypes>(
                          value: CoffeeTypes.cappuccino,
                          groupValue: _character,
                          onChanged: (CoffeeTypes? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('Espresso'),
                        leading: Radio<CoffeeTypes>(
                          value: CoffeeTypes.espresso,
                          groupValue: _character,
                          onChanged: (CoffeeTypes? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('Americano'),
                        leading: Radio<CoffeeTypes>(
                          value: CoffeeTypes.americano,
                          groupValue: _character,
                          onChanged: (CoffeeTypes? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.coffee_maker), iconSize: 100, color: Colors.blueAccent,),
            ],
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.black12,
          ),
          Row(
            children: [
              Flexible(child: TextFormField(
                decoration: InputDecoration(labelText: 'Put your money here'),
              ),),
              ElevatedButton(onPressed: () {}, child: Icon(Icons.attach_money),),
              ElevatedButton(onPressed: () {}, child: Icon(Icons.money_off_csred),),
              // IconButton(onPressed: () {}, icon: Icon(Icons.attach_money),),
              // IconButton(onPressed: () {}, icon: Icon(Icons.money_off),),
            ],
          )
        ],
      ),
    );
  }
}
