import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<Container> myList = List.generate(30, (index) => 
    Container(
      height: 50,
      width: 150,
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256))
    )
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Grid View")),
        body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 10,
        childAspectRatio: 3/4),
        children: myList,),
      ),
    );
  }
}
