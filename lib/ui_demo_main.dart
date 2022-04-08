import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final dummyItems = [
  'assets/img/img_1.jpg',
  'assets/img/img_2.jpg',
  'assets/img/img_3.jpg',
  'assets/img/img_4.jpg',
];
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI DEMO',
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
          title: const Text('Xersuy UI Demo',
              style: TextStyle(color: Colors.black)),
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
    return ListView(
      children: <Widget>[_buildTop(), _buildMiddle(), _buildBottom()],
    );
  }

  Widget _buildTop() {
    return GestureDetector(
        onTap: () {
          print('클릭');
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const <Widget>[
                      Icon(
                        Icons.local_taxi,
                        size: 40,
                      ),
                      Text('택시')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(
                        Icons.local_taxi,
                        size: 40,
                      ),
                      Text('블랙')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(
                        Icons.local_taxi,
                        size: 40,
                      ),
                      Text('바이크')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(
                        Icons.local_taxi,
                        size: 40,
                      ),
                      Text('대리')
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const <Widget>[
                      Icon(
                        Icons.local_taxi,
                        size: 40,
                      ),
                      Text('택시')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(
                        Icons.local_taxi,
                        size: 40,
                      ),
                      Text('블랙')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(
                        Icons.local_taxi,
                        size: 40,
                      ),
                      Text('바이크')
                    ],
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Column(
                      children: const <Widget>[
                        Icon(
                          Icons.local_taxi,
                          size: 40,
                        ),
                        Text('대리')
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
      ),
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                // decoration: const BoxDecoration(color: Colors.amber),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage(url),
                    fit: BoxFit.cover,
                  ),
                ));
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(10, (idx) {
      return ListTile(
        leading: const Icon(Icons.notifications_none),
        title: Text('제목 $idx'),
        subtitle: Text('내용 $idx'),
      );
    });

    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
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
