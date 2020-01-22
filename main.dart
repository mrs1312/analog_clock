import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Clockbody.dart';
import 'Clock_face.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clock',
      darkTheme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: clock(),
    );
  }
}

class clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            'Analog Clock',
          ),
        ),
      ),
      body:Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Clockbody(),

            ],
          ),
      ),
      );
  }
}

