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
      appBar: AppBar(title: const Text('Форма ввода'),),
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

  void _convertLeng() {
    length = double.parse(_length.text);
  }

  void _convertWid() {
    width = double.parse(_width.text);
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
                    return 'Warning';
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
                    return 'Warning';
                  }
                }),
                ),
              ],
            ),

            const SizedBox(height: 10,),
            ElevatedButton(onPressed: () {

              _formKey.currentState!.validate();
              _convertLeng();
              _convertWid();
              _count();
            },

            child: const Text('Check', style: TextStyle(color: Colors.white),),
            ),
            Text('$length * $width= $_res'),
          ],
        ),
    );
  }
}


