import 'package:flutter/material.dart';
import 'package:my_first_app/pages/gallery_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = "/homepage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: const Center(
        child: Text("Home Page", style: TextStyle(fontSize: 35)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.routeName);
        },
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
