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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: 
            TextField(
              autocorrect: false,
              enableInteractiveSelection: false,
              obscureText: true,
              obscuringCharacter: "*",
              keyboardType: TextInputType.number,
              readOnly: true,
            ),
          ),
        ),
      ),
    );
  }
}
