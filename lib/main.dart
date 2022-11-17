import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Color> colors = [Colors.red, Colors.black, Colors.teal, Colors.cyan];

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
            color: colors[index],
          ),
        ),
      ),
    );
  }
}
