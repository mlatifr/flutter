import 'dart:html';
import 'dart:ui';

import 'package:aplikasi_hello_world/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = 'no data';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('API post request'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(output),
              TextButton(
                  onPressed: () {
                    User.getUser('2').then((users) {
                      output = '';
                      for (int i = 0; i < users.length; i++) {
                        output = output +
                            '[ ' +
                            users[i].id +
                            ' ] ' +
                            '[ ' +
                            users[i].name +
                            ' ] ' +
                            users.length.toString();
                        setState(() {});
                      }
                    });
                  },
                  child: Text('GET'))
            ],
          ),
        ),
      ),
    );
  }
}
