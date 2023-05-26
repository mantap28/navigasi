import 'package:flutter/material.dart';
import 'package:hellow/halaman_kedua.dart';
import 'package:hellow/halaman_ketiga.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  var judul = "belajar NAVIGASI";
  var body = "belajar body";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Halaman Kedua'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HalamanKedua(),
                ));
              },
            ),
            ListTile(
              title: const Text('Halaman Ketiga'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HalamanKetiga(),
                ));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(centerTitle: true, title: Text(judul)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(
          () {
            judul = "judul berubah";
            body = "body yang sudah berubah";
          },
          
        );
        
      },child: Icon(Icons.arrow_forward_ios),),
      body: Text(body),
    );
  }
}
