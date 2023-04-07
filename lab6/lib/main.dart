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
  final _numb = TextEditingController();
  final _numb2 = TextEditingController();



  

  @override
  Widget build(BuildContext context) {


    return Form(
        key: _formKey,
        child: Column(
          children: <Widget> [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Длина'),
                SizedBox(width: 30,),
                SizedBox(height: 65,),
                Flexible(child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                    controller: _numb,onChanged: (value) {}, validator: (value){
                  if (double.tryParse(value!) == null)
                    return 'Warning';
                }),
                ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Ширина'),
                SizedBox(width: 20,),
                SizedBox(height: 65,),
                Flexible(child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    controller: _numb2,onChanged: (value2) {}, validator: (value2){
                  if (double.tryParse(value2!) == null)
                    return 'Warning';
                }),
                ),
              ],
            ),



            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              if (_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('OK'), backgroundColor: Colors.green,),
                );
              }
            },
            child: const Text('Check', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
    );
  }
}


