import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const latihan6(),
    );
  }
}

class latihan6 extends StatelessWidget {
  const latihan6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: DecorationImage(
                image: AssetImage('assets/wallpaper.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'Hi, Zidan',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.cyan,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ))
              ],
            ),
          ),
          Positioned(
            bottom: -100,
            left: 50,
            child: Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Pencet Saya'),
                  const Text('Halo Button'),
                  ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        width: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.abc, color: Colors.black),
                            Text("Pesan Test Sekarang",
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.amber),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ))))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
