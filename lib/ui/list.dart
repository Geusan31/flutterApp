import 'package:flutter/material.dart';
import 'package:kelompok_website_ge/ui/detail.dart';

class ListProduk extends StatefulWidget {
  const ListProduk({Key? key}) : super(key: key);

  @override
  _ListProdukState createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Produk"),
      ),
      body: ListView(
        children: const [
          ItemProduk(
            kodeProduk: "A001",
            namaProduk: "Kulkas",
            harga: 2500000,
          ),
          ItemProduk(
            kodeProduk: "A002",
            namaProduk: "TV",
            harga: 5000000,
          ),
          ItemProduk(
            kodeProduk: "A003",
            namaProduk: "Mesin Cuci",
            harga: 1500000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProdukDetail(kodeProduk: kodeProduk, namaProduk: namaProduk, harga: harga,)));
      },
    );
  }

}