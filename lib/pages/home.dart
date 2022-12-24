import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/models/product.dart';

class HomePage extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(
        100,
        (index) => Product(faker.food.restaurant(), "https://picsum.photos/id/$index/200",
            10000 + Random().nextInt(100000), faker.lorem.sentence()));

    return Scaffold(
        appBar: AppBar(title: Text("Halaman Utama")),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GridTile(
              child: Image.network(dummyData[index].imageURL),
              footer: Container(
                height: 80,
                color: Colors.green.withOpacity(0.8),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(dummyData[index].judul,
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold),
                    ),
                    Text("Rp ${dummyData[index].harga}",
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold),
                    ),
                    Text("Rp ${dummyData[index].deskripsi}",
                    maxLines: 2,
                    style: const TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),);
          },
          itemCount: dummyData.length,
        ));
  }
}
