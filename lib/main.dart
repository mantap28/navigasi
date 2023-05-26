import 'package:flutter/material.dart';
import 'package:hellow/halaman_utama.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigasi',
      debugShowCheckedModeBanner: false,
      home: HalamanUtama(),
    );
  }
}
