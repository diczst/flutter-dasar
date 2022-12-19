import 'package:flutter/material.dart';
import 'package:my_first_app/pages/photo_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static const routeName = "/gallerypage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gallery Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Gallery Page",
              style: TextStyle(fontSize: 35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("<< Kembali")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(PhotoPage.routeName);
                    },
                    child: const Text("Selanjutnya >>"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
