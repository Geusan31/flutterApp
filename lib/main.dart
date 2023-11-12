import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kelompok_website_ge/ui/detail.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kelompok_website_ge/ui/home.dart';
import 'package:kelompok_website_ge/ui/list.dart';

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
  const CurvedDev({Key? key}) : super(key: key);

  @override
  _CurvedDevState createState() => _CurvedDevState();
}

class _CurvedDevState extends State<CurvedDev> {
  int index = 0;

  int? harga;

  List<Widget> get screens => [
    // HomePage(),
    // ProdukDetail(
    //   kodeProduk: _kodeProdukTextboxController.text,
    //   namaProduk: _namaProdukTextboxController.text,
    //   harga: harga
    // )
    ListProduk()
  ];

  // List<String> get titles => [
  //   "Form Produk",
  //   "Detail Produk"
  // ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const FaIcon(FontAwesomeIcons.wpforms, size: 30, color: Colors.white),
      const Icon(Icons.format_list_bulleted, size: 30),
    ];
    // TODO: implement build
    return Scaffold(
        body: const ListProduk(),
        // bottomNavigationBar: Theme(
        //     data: Theme.of(context).copyWith(
        //         iconTheme: IconThemeData(color: Colors.white)
        //     ),
        //     child: CurvedNavigationBar(
        //       animationDuration: Duration(milliseconds: 300),
        //       animationCurve: Curves.easeInOut,
        //       color: Colors.blue,
        //       height: 60,
        //       backgroundColor: Colors.transparent,
        //       index: index,
        //       items: items,
        //       onTap: (index) =>
        //           setState(() {
        //             this.index = index;
        //             this.title = titles[index];
        //           }),
        //     ))
      floatingActionButton: GestureDetector(
        onTap: () async {
          await Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}