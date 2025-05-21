import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 45, 45, 45),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 60,
            child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'BIG LOGO',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(child: Text('Home'), onPressed: () {}),
                      TextButton(child: Text('About'), onPressed: () {}),
                      TextButton(child: Text('Contact'), onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Footer
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 40,
            child: Container(
              color: Colors.grey,
              child: Center(
                child: Text(
                  'Copyright 2023',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          // Main Body Content
          Positioned(
            top: 60,
            bottom: 40,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < 20; i++)
                    Card(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Image.asset('assets/images/block.png'),
                            title: const Text('Demo Title'),
                            subtitle: const Text(
                              'This is a simple card in Flutter',
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ), 
          ),
        ],
      ),
    );
  }
}
