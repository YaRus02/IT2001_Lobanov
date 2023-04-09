import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Выберите любой вариант'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: onPressed, child: child),
          ElevatedButton(onPressed: onPressed, child: child),
        ],
      ),
    );
  }
}

