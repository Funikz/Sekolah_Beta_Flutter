import 'package:flutter/material.dart';
import 'package:sekolah_beta/latihan7/pages/hal_satu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Hal_Satu(),
    );
  }
}
