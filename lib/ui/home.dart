import 'package:flutter/material.dart';
import 'package:kelompok_website_ge/ui/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("Form Produk")),
      body: SingleChildScrollView(
        child: Column(
            children: [
              _textboxKodeProduk(),
              _textboxNamaProduk(),
              _textboxHargaProduk(),
              _tombolSimpan(),
            ]),
      )
    );
  }

  Widget _textboxKodeProduk() {
    return TextField(decoration: const InputDecoration(labelText: "Kode Produk"), controller: _kodeProdukTextboxController);
  }

  Widget _textboxNamaProduk() {
    return TextField(decoration: const InputDecoration(labelText: "Nama Produk"), controller: _namaProdukTextboxController);
  }

  Widget _textboxHargaProduk() {
    return TextField(decoration: const InputDecoration(labelText: "Harga Produk"), controller: _hargaProdukTextboxController);
  }

  Widget _tombolSimpan() {
    return ElevatedButton(onPressed: () {
      // if(_hargaProdukTextboxController.text.isNotEmpty && int.tryParse(_hargaProdukTextboxController.text) != null) {
      //   harga = int.parse(_hargaProdukTextboxController.text);
      // }
      // setState(() {
      //   index = 1;
      // });
      String kodeProduk = _kodeProdukTextboxController.text;
      String namaProduk = _namaProdukTextboxController.text;
      int harga = int.parse(_hargaProdukTextboxController.text);

      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProdukDetail(kodeProduk: kodeProduk, namaProduk: namaProduk, harga: harga,)));
    }, child: const Text("Simpan"));
  }

}