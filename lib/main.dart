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
            title: Text("List Tile"),
          ),

          body: ListView(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text('Dicky Pratama'),
                subtitle: Text('Mahasiswa kece badai, always semail'),
                leading: CircleAvatar(),
                trailing: Text('10:00 PM'),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical:10),
                title: Text('Senku Ishigami'),
                subtitle: Text('Mahasiswa kece badai, ingin mengembalikan peradaban manusia yang hancur menjadi batu',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,),
                leading: CircleAvatar(),
                trailing: Text('10:00 PM'),
              ),
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.only(top:10),
                title: Text('Thorfinn Karlsefni'),
                subtitle: Text('Mahasiswa yang ingin mencari tempat baru untuk membangun peradaban yang bebas dari perang',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,),
                leading: CircleAvatar(),
                trailing: Text('10:00 PM'),
              ),
              Divider()
            ],
          ),
      )
    );
  }
}
