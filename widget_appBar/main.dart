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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        leading: Container(
          color: Colors.red,
        ),
        leadingWidth: 50,
        title: Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        titleSpacing: 20,
        actions: [
          Container(
            width: 50,
            color: Colors.black.withOpacity(0.5),
          ),
          Container(
            width: 50,
            color: Colors.black.withOpacity(0.3),
          ),
          Container(
            width: 50,
            color: Colors.black.withOpacity(0.5),
          ),
          Container(
            width: 50,
            color: Colors.black.withOpacity(0.3),
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            width: 10,
            height: 100,
            color: Colors.pink,
          ),
          preferredSize: Size(10, 100),
        ),
        flexibleSpace: Container(
          width: 10,
          height: 24,
          color: Colors.amber,
        ),
      )),
    );
  }
}
