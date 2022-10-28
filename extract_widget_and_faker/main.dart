import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extract Widget"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return ListItem(
              imgUrl:
                  'https://picsum.photos/id/${(index.toInt() + 10).toString()}/200/300',
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          }),
          itemCount: 10,
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;

  const ListItem(
      {required this.imgUrl, required this.subtitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      trailing: Text("15:14 PM"),
    );
  }
}
