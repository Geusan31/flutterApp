import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Coba Flutter",
      debugShowCheckedModeBanner: false,
      home: CurvedDev(),
    );
  }
}

class CurvedDev extends StatefulWidget {
  const CurvedDev({super.key});

  @override
  _CurvedDevState createState() => _CurvedDevState();
}

class _CurvedDevState extends State<CurvedDev> {
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.settings, size: 30),
    ];
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text("Edisi Belajar Flutter"),
        ),
        body: Column(children: [
          const TextField(
              decoration: InputDecoration(labelText: "Kode Produk")),
          const TextField(
              decoration: InputDecoration(labelText: "Nama Produk")),
          const TextField(
              decoration: InputDecoration(labelText: "Harga Produk")),
          ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
        ]),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          items: items,
        ));
  }
}
