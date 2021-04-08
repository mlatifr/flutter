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
        appBar: AppBar(title: Text('Hello World')),
        body: Center(
            child: Container(
                color: Colors.orangeAccent[100],
                width: 150,
                height: 120,
                child: Text(
                  ''' saat ini saya sedang berlatih flutter dengann topik TEXT''',
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ))),
      ),
    );
  }
}
