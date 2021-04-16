import 'dart:html';
import 'dart:ui';

import 'package:aplikasi_hello_world/post_result_model.dart';
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
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('API post request'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult.id +
                      ' | ' +
                      postResult.name +
                      ' | ' +
                      postResult.job +
                      ' | ' +
                      postResult.createdAt
                  : 'tidak ada data'),
              TextButton(
                  onPressed: () {
                    PostResult.connectToAPI('Badu', 'Dokter').then((value) {
                      postResult = value;
                      setState(() {});
                    });
                  },
                  child: Text('Send Request'))
            ],
          ),
        ),
      ),
    );
  }
}
