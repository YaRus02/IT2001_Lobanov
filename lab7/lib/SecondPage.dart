import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
    SecondPage({super.key});

  String transData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Выберите любой вариант'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              transData = 'Да!';
              String textToSendBack = transData;
              Navigator.pop(context, textToSendBack);
            }, child: const Text('Да!')),
            ElevatedButton(onPressed: () {
              transData = 'Нет!';
              String textToSendBack = transData;
              Navigator.pop(context, textToSendBack);
            }, child: const Text('Нет!')),
          ],
        ),
      )
    );
  }
}

