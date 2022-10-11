import 'package:flutter/material.dart';
import 'package:sekolah_beta/latihan7/pages/hal_empat.dart';

class Hal_Tiga extends StatefulWidget {
  const Hal_Tiga({super.key});

  @override
  State<Hal_Tiga> createState() => _Hal_TigaState();
}

class _Hal_TigaState extends State<Hal_Tiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Page 3'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Hal_Empat()));
              },
              child: const Text('Navigation to Page 4'))),
    );
  }
}
