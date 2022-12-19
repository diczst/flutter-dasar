import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/pages/gallery_page.dart';
import 'package:my_first_app/pages/home_page.dart';
import 'package:my_first_app/pages/photo_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        GalleryPage.routeName:(context) => const GalleryPage(),
        PhotoPage.routeName:(context) => const PhotoPage()
      },
    );
  }
}
