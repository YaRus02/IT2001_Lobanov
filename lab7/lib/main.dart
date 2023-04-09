import 'package:flutter/material.dart';
import 'package:lab7/SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/sec' : (context) => SecondPage(),
      },
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

  String acceptValue = '';

  void _awaitReturnValue(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondPage(),
        ));
      acceptValue = result;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(acceptValue),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Возвращение значения'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                ElevatedButton(onPressed: () {
                  _awaitReturnValue(context);
                  Navigator.pushNamed(context, '/sec');
                }, child: const Text('Приступить к выбору'),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
