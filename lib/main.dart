import 'package:draw/pages/scale.dart';
import 'package:flutter/material.dart';
import 'package:draw/pages/draw.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Start',
      home: HomePage(),
      routes: {
        "/draw": (context) => Draw(),
        "/scale": (context) => Scale(),
      },
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return Scaffold(
      appBar: AppBar(title: Text("Quick Start")),
      body: Center(
        child: ListView(
          children: <Widget>[
            FlatButton(
              child: Text("Open draw"),
              onPressed: () => navigator.pushNamed("/draw"),
            ),
            FlatButton(
              child: Text("Open scaleDrag"),
              onPressed: () => navigator.pushNamed("/scale"),
            ),
          ],
        )
      ),
    );
  }
}