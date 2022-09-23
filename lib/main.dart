import 'package:flutter/material.dart';

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
        primarySwatch: Colors.yellow,
      ),
      home: const Latihan5(),
    );
  }
}

class Latihan5 extends StatelessWidget {
  const Latihan5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Halo Saya Latihan")),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            child: const Center(child: Text("Saya Widget ditengah")),
          ),
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.red,
            child: Column(
              children: const [],
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [Text("Saya Kiri"), Text("Saya Kanan")],
            ),
          ),
          Container(
            width: double.infinity,
            height: 90,
            color: Colors.yellow,
            child: Container(
                margin: const EdgeInsets.all(10),
                color: Colors.blue,
                child: const Center(child: Text("Saya berwarna"))),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.black,
            child: const Center(
                child: Text(
              "Saya dibawah sendiri",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.abc),
      ),
    );
  }
}
