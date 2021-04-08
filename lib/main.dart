import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Container'),
        ),
        body: Container(
          color: Colors.orangeAccent,
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.cyan, Colors.amberAccent])),
          ),
        ),
      ),
    );
  }
}
