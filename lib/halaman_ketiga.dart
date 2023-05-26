import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hellow/halaman_kedua.dart';
import 'package:hellow/halaman_utama.dart';

class HalamanKetiga extends StatelessWidget {
  const HalamanKetiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HalamanUtama(),
                ));
              },
            ),
            ListTile(
              title: const Text('Halaman kedua'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HalamanKedua(),
                ));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("halaman kedua"),
      ),
      body: const Text("halaman kosong "),
    );
  }
}
