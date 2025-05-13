import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello World',
                style: TextStyle(fontSize: 67, color: Colors.blue),
              ),
              Text(
                'welcome to flutter',
                style: TextStyle(fontSize: 24, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
