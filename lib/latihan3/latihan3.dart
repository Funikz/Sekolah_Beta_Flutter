import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home: const Hello(),
    );
  }
}

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    Widget helloWidget = Container(
      color: Colors.white70,
      constraints: const BoxConstraints.expand(),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/flutter_logo.svg',
            height: 50,
            width: 50,
          ),
          const Text(
            'Hello',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
            textDirection: TextDirection.ltr,
          ),
          const Text(
            'World!',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.ltr,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: Stack(children: [
          Image.asset(
            'assets/wallpaper.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          helloWidget
        ]));
  }
}
