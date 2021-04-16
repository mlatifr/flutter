import 'dart:html';
import 'dart:ui';

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
  int number = 0;
  double ukuranBtn = 1;
  void tekanTombol() {
    // setState() untuk mengubah tampilan sesaui dengan state yang ada saat ini
    setState(() {
      number += 1;
      ukuranBtn += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar StatefullWidget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString()),
              SizedBox(
                  width: 50 + ukuranBtn,
                  height: 50 + ukuranBtn,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent)),
                    onPressed: tekanTombol,
                    child: Text(
                      'Tambah Ukuran',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
