import 'package:flutter/material.dart';
import 'package:lab12/Classes/Enums.dart';
import 'package:lab12/Classes/Machine.dart';
import '../Coffee.dart';
import '../Coffee_inter.dart';

class Display extends StatefulWidget {
  final CoffeeMachine machine;
  const Display({Key? key, required this.machine}) : super(key: key);

  @override
  State<Display> createState() => _Display();
}

class _Display extends State<Display> {
  ICoffee? _coffee;
  int cash = 0;
  var _cashController = TextEditingController();
  Cappuccino cappuccino = Cappuccino();
  Espresso espresso = Espresso();
  Americano americano = Americano();
  String result = '';

  void _addResources() {
    int beans = 0;
    int water = 0;
    int milk = 0;
    int cash = int.parse(_cashController.text);

    widget.machine.addResources(beans, water, milk, cash);
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    _cashController = TextEditingController(text: '0');
  }

  void _clearTextField() {
    _cashController.clear();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child:  ListView(
          children: [
            Container(
              color: Colors.lightGreenAccent,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:  [
                        Text('beans: ${widget.machine.resources.coffeeBeans}',),
                        Text('Water: ${widget.machine.resources.water}'),
                        Text('Milk: ${widget.machine.resources.milk}'),
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
                        children:  [
                          const Text('Coffee Maker',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          Text(
                            'Your money: ${widget.machine.resources.cash}',
                            style: const TextStyle(fontSize: 15),
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
                        RadioListTile<ICoffee>(
                          title: Text('Cappuccino'),
                          value: cappuccino,
                          groupValue: _coffee,
                          onChanged: (ICoffee? value) {
                            setState(() {
                              _coffee = value;
                            });
                          },
                        ),
                        RadioListTile<ICoffee>(
                          title: Text('Espresso'),
                          value: espresso,
                          groupValue: _coffee,
                          onChanged: (ICoffee? value) {
                            setState(() {
                              _coffee = value;
                            });
                          },
                        ),
                        RadioListTile<ICoffee>(
                          title: Text('Americano'),
                          value: americano,
                          groupValue: _coffee,
                          onChanged: (ICoffee? value) {
                            setState(() {
                              _coffee = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (_coffee != null) {
                      widget.machine.makeCoffee(_coffee!);
                    }
                  },
                  icon: Icon(Icons.coffee_maker),
                  iconSize: 100,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: Colors.black12,
            ),
            Row(
              children: [
                SizedBox(width: 5,),
                Flexible(
                  child: TextFormField(
                    controller: _cashController,
                    validator: (cash) {
                      if (int.tryParse(cash!) == null) {
                        return 'Enter the correct data';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Cash'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _addResources();

                  },
                  child: Icon(Icons.attach_money),
                ),
                ElevatedButton(
                  onPressed: () {
                    _clearTextField();
                  },
                  child: Icon(Icons.money_off_csred),
                ),
                SizedBox(width: 5,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
