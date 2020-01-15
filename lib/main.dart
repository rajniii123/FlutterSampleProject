import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.dehaze),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {},
          )
        ],
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: (InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'UserId',
              )),
            ),
            TextField(
              decoration: (InputDecoration(
                  prefixIcon: Icon(Icons.lock_open), labelText: 'password')),
            ),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.red,
              color: Colors.white,
              child: Text(
                'Raise Buttom',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              shape: Border.all(color: Colors.blue[900], width: 5.0),
            ),
            FlatButton(
              textColor: Colors.white,
              color: Colors.lightBlue,
              onPressed: () {},
              child: Text(
                "Flate Button",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              shape: OutlineInputBorder(),
            ),
            MaterialButton(
              onPressed: () {},
              textColor: Colors.blue,
              color: Colors.red,
              child: Text(
                'Material Button',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
