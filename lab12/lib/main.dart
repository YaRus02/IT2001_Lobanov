import 'package:flutter/material.dart';
import 'package:lab12/Classes/Pages/ControlPanel.dart';
import 'package:lab12/Classes/Pages/Display.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      //color: Colors.brown,
      home: const TabBarExample(),

    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.coffee),
              ),
              Tab(
                icon: Icon(Icons.abc),
              ),
              // Tab(
              //   icon: Icon(Icons.brightness_5_sharp),
              // ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[

            Display(),
            ControlPanel(),

            // Center(
            //   child: Text("It's sunny here"),
            // ),
          ],
        ),
      ),
    );
  }
}
