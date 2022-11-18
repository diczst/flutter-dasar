import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Extract Widget')),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) =>  ChatItem(
                'https://picsum.photos/id/$index/200/300', faker.person.name(), faker.lorem.sentence()),
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String chat;

  ChatItem(this.imageUrl, this.title, this.chat);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
      title: Text(title),
      subtitle: Text(chat),
      trailing: Text('04.00'),
    );
  }
}
