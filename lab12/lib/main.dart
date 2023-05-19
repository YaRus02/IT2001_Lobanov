import 'package:flutter/material.dart';
import 'package:lab12/Classes/Machine.dart';
import 'package:lab12/Classes/Pages/ControlPanel.dart';
import 'package:lab12/Classes/Pages/Display.dart';
import 'package:lab12/Classes/Resources.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: TabBarBuild(),
    );
  }
}
class TabBarBuild extends StatefulWidget {
  const TabBarBuild({Key? key}) : super(key: key);

  @override
  _TabBarBuildState createState() => _TabBarBuildState();
}

class _TabBarBuildState extends State<TabBarBuild> {
  CoffeeMachine machine = CoffeeMachine(Resources(200, 200, 200, 200));



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          backgroundColor: Colors.brown,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.coffee, color: Colors.white70,),
              ),
              Tab(
                icon: Icon(Icons.fire_truck_rounded, color: Colors.white70,),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Display(machine: machine),
            ControlPanel(machine: machine),
          ],
        ),
      ),
    );
  }
}
