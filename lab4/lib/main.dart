import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lab4',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column (
        children:[
          Image(image: NetworkImage ("https://fikiwiki.com/uploads/posts/2022-02/1644855597_24-fikiwiki-com-p-kartinki-khd-kachestva-25.jpg"),),
          Row(
            children: [
              Text("Общежитие № 18"),
            ],
          ),
          Text("Краснодар, ул. Калинина, 13/18"),
        ],
      )

    );
  }
}
