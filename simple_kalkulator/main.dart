import 'package:dart_eval/dart_eval.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String count = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Buat Kalkulator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: count),
              enabled: false,
              textAlign: TextAlign.center,
            ),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "+";
                        });
                      },
                      child: Text("+")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "-";
                        });
                      },
                      child: Text("-")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "*";
                        });
                      },
                      child: Text("*")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "/";
                        });
                      },
                      child: Text("/")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "1";
                        });
                      },
                      child: Text("1")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "2";
                        });
                      },
                      child: Text("2")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "3";
                        });
                      },
                      child: Text("3")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "4";
                        });
                      },
                      child: Text("4")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "5";
                        });
                      },
                      child: Text("5")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "6";
                        });
                      },
                      child: Text("6")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "7";
                        });
                      },
                      child: Text("7")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "8";
                        });
                      },
                      child: Text("8")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "9";
                        });
                      },
                      child: Text("9")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = count + "0";
                        });
                      },
                      child: Text("0")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = "";
                        });
                      },
                      child: Text("AC")),
                  Container(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          try {
                            count = eval(count).toString();
                          } on Exception catch (exception) {
                            count = "error";
                          } catch (error) {
                            count = "error";
                          }
                        });
                      },
                      child: Text("=")),
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }
}
