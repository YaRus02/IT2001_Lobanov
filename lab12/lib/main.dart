import 'package:flutter/material.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
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
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              // Tab(
              //   icon: Icon(Icons.brightness_5_sharp),
              // ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children: [
                Text('sdsd'),
                Text('sdsd'),
                Text('sdsd'),
                Text('sdsd'),
                Text('sdsd'),
              ],
            ),

            Column(
              children: [
                Text('sdsd'),
                Text('sdsd'),
                Text('sdsd'),
                Text('sdsd'),

              ],
            )

            // Center(
            //   child: Text("It's sunny here"),
            // ),
          ],
        ),
      ),
    );
  }
}
