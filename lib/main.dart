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
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("images/mjdwjd.jpg")
            )
          ),
        )

      ),
    );
  }
}
