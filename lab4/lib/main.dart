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
          const Image(image: NetworkImage ('https://img.desktopwallpapers.ru/food/pics/wide/1920x1200/d894ea1c6d4ed34fcbca5e088b966f57.jpg'),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Общежитие № 18"),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.favorite_border),
            ],
          ),
          Row(
            children: const [
              Text("Краснодар, ул. Калинина, 13/18"),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Icon(Icons.phone),
              Icon(Icons.navigation_outlined),
              Icon(Icons.share),
            ],
          ),
          const Expanded(
            child: Text (
              "FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:"
            ),
          )
        ],
      )
    );
  }
}
