import 'package:flutter/material.dart';

class Hal_Empat extends StatefulWidget {
  const Hal_Empat({super.key});

  @override
  State<Hal_Empat> createState() => _Hal_EmpatState();
}

class _Hal_EmpatState extends State<Hal_Empat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kembali ke halaman'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Text('Back to Page 1')),
      ),
    );
  }
}
