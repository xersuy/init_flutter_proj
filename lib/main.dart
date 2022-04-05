import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;

  final _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              const Text('Xersuy Demo', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print('menu button is clicked');
              },
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),

              // onPressed: () {}, //Icon(Icons.search, color: Colors.black),
            ),
          ]),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[_buildTop(), _buildMiddle(), _buildBottom()],
    );
  }

  Widget _buildTop() {
    return const Text('top');
  }

  Widget _buildMiddle() {
    return const Text('middle');
  }

  Widget _buildBottom() {
    return const Text('bottom');
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('이용서비스', style: TextStyle(fontSize: 40)),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('내정보', style: TextStyle(fontSize: 40)),
    );
  }
}
