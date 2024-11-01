import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void decrement() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  void increment() {
    setState(() {
      if (counter < 15) {
        counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Counter',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Roboto',
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 50),
          Text(
            '$counter',
            style: const TextStyle(fontSize: 100, color: Colors.blue),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 80, color: Colors.red),
                ),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: increment,
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 80, color: Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
