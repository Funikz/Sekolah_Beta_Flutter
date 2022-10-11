import 'package:flutter/material.dart';
import 'package:sekolah_beta/latihan7/pages/hal_dua.dart';

class Hal_Satu extends StatefulWidget {
  const Hal_Satu({super.key});

  @override
  State<Hal_Satu> createState() => _Hal_SatuState();
}

class _Hal_SatuState extends State<Hal_Satu> {
  int screenView = 0;
  String page = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Saya dipanggil sebanyak $screenView'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  final data = await Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Hal_Dua()));
                  setState(() {
                    screenView++;
                    if (data != null) {
                      page = data;
                    } else {
                      page = "";
                    }
                  });
                },
                child: const Text('Navigation to Page 2')),
            const SizedBox(height: 20),
            Visibility(
              child: Text('Saya kembali dari $page'),
              visible: page.isNotEmpty,
            )
          ],
        ),
      ),
    );
  }
}
