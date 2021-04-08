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
          title: Text('Latihan Row dan Coloumn'),
        ),
        body: Column(
          children: <Widget>[Text('Text1'), Text('Text2'), Text('Text3')],
        ),
      ),
    );
  }
}
