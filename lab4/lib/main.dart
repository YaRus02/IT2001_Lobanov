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

  bool pressLike = false;
  int likeCount = 227;

 void likeBut() {
    setState(() {
      pressLike = !pressLike;
      if (pressLike) {
        likeCount++;
      } else {
        likeCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView (
        children:[
          const Image(image: NetworkImage ('https://img.desktopwallpapers.ru/food/pics/wide/1920x1200/d894ea1c6d4ed34fcbca5e088b966f57.jpg'),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text("Общежитие № 18", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0), ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 0.0,0.0 ,0.0 ),
                    child : const Text("Краснодар, ул. Калинина, 13/18", style: TextStyle(color: Colors.grey, fontSize: 10),),
                  ),
                ],

              ),
              Column(
                children: const [
                  // подгонка под макет
                  SizedBox(width: 100,),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: likeBut,
                        icon: (pressLike) ? const Icon(Icons.favorite, color: Colors.red,) : const Icon(Icons.favorite_border, color: Colors.red),
                      ),
                      Text("$likeCount", style: const TextStyle(fontSize: 12),),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.phone), color: Colors.green,),
              IconButton(onPressed: () {}, icon: const Icon(Icons.navigation_rounded), color: Colors.green,),
              IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined), color: Colors.green,),
            ],
          ),
          const Expanded(
            child: Text (
              "FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:FSFJKL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:KL:"
            ),
          )
        ],
      )

    );
  }
}
