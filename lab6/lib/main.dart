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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget> [
            const Text('Name', style: TextStyle(fontSize: 20.0),),
            TextFormField(validator: (value){
              if (value!.isEmpty) return 'Warning';
              return null;
            }),
            const SizedBox(height: 20.0),
            ElevatedButton(onPressed: () {
              if (_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('OK'), backgroundColor: Colors.green,),
                );
              }
            },
            child: const Text('Check', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}


