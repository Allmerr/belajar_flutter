import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Nama": "Muhammad Kevin Almer",
      "Kelas": "XI RPL 2",
      "Hobi": [
        "Mengoding",
        "Catur",
        "Film",
        "Nonton Anime",
        "Main Kucing",
        "Nonton Anime",
        "Main Kucing"
      ]
    },
    {
      "Nama": "Kerin Dwi Almira",
      "Kelas": "VIII D",
      "Hobi": ["Nonton Anime", "Main Kucing"]
    },
    {
      "Nama": "Muhammad Kevin Almer",
      "Kelas": "XI RPL 2",
      "Hobi": [
        "Mengoding",
        "Catur",
        "Film",
        "Nonton Anime",
        "Main Kucing",
        "Nonton Anime",
        "Main Kucing"
      ]
    },
    {
      "Nama": "Kerin Dwi Almira",
      "Kelas": "VIII D",
      "Hobi": ["Nonton Anime", "Main Kucing"]
    },
    {
      "Nama": "Muhammad Kevin Almer",
      "Kelas": "XI RPL 2",
      "Hobi": [
        "Mengoding",
        "Catur",
        "Film",
        "Nonton Anime",
        "Main Kucing",
        "Nonton Anime",
        "Main Kucing"
      ]
    },
    {
      "Nama": "Kerin Dwi Almira",
      "Kelas": "VIII D",
      "Hobi": ["Nonton Anime", "Main Kucing"]
    },
    {
      "Nama": "Muhammad Kevin Almer",
      "Kelas": "XI RPL 2",
      "Hobi": [
        "Mengoding",
        "Catur",
        "Film",
        "Nonton Anime",
        "Main Kucing",
        "Nonton Anime",
        "Main Kucing"
      ]
    },
    {
      "Nama": "Kerin Dwi Almira",
      "Kelas": "VIII D",
      "Hobi": ["Nonton Anime", "Main Kucing"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("ID Apps"),
      ),
      body: ListView(
        children: myList.map((data) {
          List newlist = data["Hobi"];
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.black.withOpacity(0.1),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nama : ${data['Nama']}"),
                          Text("Kelas : ${data['Kelas']}"),
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: newlist.map((e) {
                        return Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          color: Colors.amber,
                          child: Text("${e}"),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    ));
  }
}
