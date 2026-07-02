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
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'ButterflyKids'),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Assets Example')),
        body: Center(
          child: Stack(
            children: <Widget>[
              Image.asset('assets/images/bg.jpg'),

              Image.asset('assets/icons/icon.png'),
              Center(
                child: Text(
                  'Hello, Flutter!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'ButterflyKids',
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
