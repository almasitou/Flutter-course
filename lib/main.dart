import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                width: 320.0,
                child: Text(
                  'Press "+" button to increment the counter and "-" button to decrement the counter',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Counter(),
            ],
          ),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _decrementCounter,
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  fixedSize: Size(52, 52),
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                ),
                child: Icon(Icons.remove, color: Colors.black, size: 24),
              ),
              SizedBox(width: 16),
              Text('$_counter', style: TextStyle(fontSize: 48)),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  fixedSize: Size(52, 52),
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(),
                ),
                child: Icon(Icons.add, color: Colors.black, size: 24),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
