import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super (key: key);

  @override
  State<StatefulWidget> createState() => MyFormState();
}

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text('калькулятор площади'),),
      body: const MyForm()
    ),
  )
);

class MyFormState extends State{
  final _formKey = GlobalKey<FormState>();
  double _res = 0;
  final _length = TextEditingController();
  final _width = TextEditingController();
  double width = 0;
  double length = 0;
  String message = 'Введите данные';

  void _convertLeng() {
    setState(() {
      length = double.parse(_length.text);
    });

  }

  void _convertWid() {
    setState(() {
      width = double.parse(_width.text);
    });
  }

  void _count() {
    setState(() {
      double length = double.parse(_length.text);
      double width = double.parse(_width.text);
      _res = width * length;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Form(
        key: _formKey,
        child: Column(
          children: <Widget> [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text('Длина'),
                const SizedBox(width: 30,),
                const SizedBox(height: 65,),
                Flexible(child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                    controller: _length, validator: (length){
                  if (double.tryParse(length!) == null) {
                    return 'Укажите адекватные данные';
                  }
                }),
                ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text('Ширина'),
                const SizedBox(width: 20,),
                const SizedBox(height: 65,),
                Flexible(child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    controller: _width,onChanged: (value2) {}, validator: (width){
                  if (double.tryParse(width!) == null) {
                    return 'Укажите адекватные данные';
                  }
                }),
                ),
              ],
            ),

            const SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              setState(() {
                _formKey.currentState!.validate();
                if (_formKey.currentState!.validate()) {
                  _convertLeng();
                  _convertWid();
                  _count();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text ('Произведено успешное вычисление!')),);
                }
              });
            },

            child: const Text('Расчитать', style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 40,),

            Text(_res != 0 ? '$length * $width= $_res' : message, style: TextStyle(fontSize: 50),),

          ],
        ),
    );
  }
}


