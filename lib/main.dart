import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo xersuy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = List.generate(100, (i) => i).toList();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page xet'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('event'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('camera'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {},
            )
          ],
        ));
  }
}
