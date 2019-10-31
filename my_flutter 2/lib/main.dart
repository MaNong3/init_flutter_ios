import 'package:flutter/material.dart';
import 'package:my_flutter/view/login.dart';
import './router/index.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      title: 'Text widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("比财"),
        ),
        body: new ListView(
          children: <Widget>[
            new Login()            
          ],
        ),
      ),
    );
  }
}
