import 'package:flutter/material.dart';

class Product {
  // @required berarti wajib diisi
  @required String judul;
  @required String imageURL;
  @required int harga;
  String deskripsi;

  // constructor
  Product(this.judul, this.imageURL, this.harga, this.deskripsi);
}
