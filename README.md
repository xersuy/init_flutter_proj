Stack(
children: <Widget>[
Container(
color: Colors.red,
width: 100,
height: 100,
padding: const EdgeInsets.all(8.0),
margin: const EdgeInsets.all(8.0),
),
Container(
color: Colors.blue,
width: 80,
height: 80,
padding: const EdgeInsets.all(8.0),
margin: const EdgeInsets.all(8.0),
),
Container(
color: Colors.green,
width: 60,
height: 60,
padding: const EdgeInsets.all(8.0),
margin: const EdgeInsets.all(8.0),
),

---

Row(
mainAxisSize: MainAxisSize.max,
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: <Widget>[
Container(
color: Colors.red,
width: 100,
height: 100,
padding: const EdgeInsets.all(8.0),
margin: const EdgeInsets.all(8.0),
),
Container(
color: Colors.blue,
width: 100,
height: 100,
padding: const EdgeInsets.all(8.0),
margin: const EdgeInsets.all(8.0),
),
Container(
color: Colors.green,
width: 100,
height: 100,
padding: const EdgeInsets.all(8.0),
margin: const EdgeInsets.all(8.0),
),
],
)

---

ListBody(children: item.map((i) => Text('$i')).toList()),


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
        