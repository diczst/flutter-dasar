import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image'),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image(image: NetworkImage("https://static.wikia.nocookie.net/vinlandsaga/images/d/d1/Thorfinn_profile_image_%281012%E2%80%931014%29.png/revision/latest?cb=20190708181512"))),
          ),
        ),
    );
  }
}
