import 'package:flutter/material.dart';
import 'package:lab12/Classes/Machine.dart';

class ControlPanel extends StatefulWidget {
  final CoffeeMachine machine;

  const ControlPanel({Key? key, required this.machine}) : super(key: key);

  @override
  State<ControlPanel> createState() => _ControlPanel();
}

class _ControlPanel extends State<ControlPanel> {
  int beans = 0;
  int water = 0;
  int milk = 0;
  int cash = 0;
  final _formKey = GlobalKey<FormState>();
  var _beansController = TextEditingController();
  var _waterController = TextEditingController();
  var _milkController = TextEditingController();
  var _cashController = TextEditingController();

  void _addResources() {
    int beans = int.parse(_beansController.text);
    int water = int.parse(_waterController.text);
    int milk = int.parse(_milkController.text);
    int cash = int.parse(_cashController.text);

    widget.machine.addResources(beans, water, milk, cash);
    setState(() {});
  }

  void _subtractResources() {
    int beans = int.parse(_beansController.text);
    int water = int.parse(_waterController.text);
    int milk = int.parse(_milkController.text);
    int cash = int.parse(_cashController.text);

    widget.machine.resources.coffeeBeans -= beans;
    widget.machine.resources.water -= water;
    widget.machine.resources.milk -= milk;
    widget.machine.resources.cash -= cash;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _beansController = TextEditingController(text: '0');
    _waterController = TextEditingController(text: '0');
    _milkController = TextEditingController(text: '0');
    _cashController = TextEditingController(text: '0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: ListView(
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
                          children: [
                            const Text('Resources: ',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            Text(
                              'Money: ${widget.machine.resources.cash}',
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Water: ${widget.machine.resources.water}',
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Milk: ${widget.machine.resources.milk}',
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Beans: ${widget.machine.resources.coffeeBeans}',
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: Colors.black12,
              ),
              TextFormField(
                controller: _beansController,
                validator: (beans) {
                  if (int.tryParse(beans!) == null) {
                    return 'Enter the correct data';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Coffee Beans'),
              ),
              TextFormField(
                controller: _waterController,
                validator: (value) {
                  if (int.tryParse(value!) == null) {
                    return 'Enter the correct data';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Water'),
              ),
              TextFormField(
                controller: _milkController,
                validator: (milk) {
                  if (int.tryParse(milk!) == null) {
                    return 'Enter the correct data';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Milk'),
              ),
              TextFormField(
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _addResources();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Resources added successfully!')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                    ),
                    child: const Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _subtractResources();
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Resources subtracted successfully!')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                    ),
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
