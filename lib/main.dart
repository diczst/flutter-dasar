import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Widget> myList = [
    Container(
      width: 200,
      height: 100,
      color: Colors.green,
    ),
    Container(
      width: 50,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 250,
      height: 100,
      color: Colors.yellow,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.black,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.orange,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.teal,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column"),
        ),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => Container(
              width: 100,
              height: 100,
              color: Colors.teal,
            ),
        ),
      ),
    );
  }
}
