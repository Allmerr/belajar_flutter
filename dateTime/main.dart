import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date Time"),
        ),
        body: Center(
            child: Text(
          DateFormat('E d MMM h.m', 'en_US').format(DateTime.now()),
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
