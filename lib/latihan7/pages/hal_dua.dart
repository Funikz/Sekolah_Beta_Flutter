import 'package:flutter/material.dart';
import 'package:sekolah_beta/latihan7/pages/hal_tiga.dart';

class Hal_Dua extends StatefulWidget {
  const Hal_Dua({super.key});

  @override
  State<Hal_Dua> createState() => _Hal_DuaState();
}

class _Hal_DuaState extends State<Hal_Dua> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, "dari halaman 2");
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Page 2'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Hal_Tiga()));
                },
                child: const Text('Navigation to Page 3')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'dari halaman 2');
                },
                child: const Text('Back to Page 1'))
          ],
        )),
      ),
    );
  }
}
