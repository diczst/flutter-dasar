import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Confirm"),
                content: Text("Apakah kamu yakin?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        print("No diklik");
                        setState(() {
                          data = "No Diklik";
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text("No")),
                  TextButton(
                      onPressed: () {
                        print("Yes diklik");
                        setState(() {
                          data = "Yes Diklik";
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text("Yes"))
                ],
              );
            });
      }),
    );
  }
}
