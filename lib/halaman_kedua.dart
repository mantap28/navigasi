import 'package:flutter/material.dart';
import 'package:hellow/halaman_ketiga.dart';
import 'package:hellow/halaman_utama.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({super.key});

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
      appBar: AppBar(
        centerTitle: true,
        title: const Text("halaman Kedua"),
        toolbarHeight: 50,
      ),
      body: ElevatedButton(
        child: const Text("back"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
