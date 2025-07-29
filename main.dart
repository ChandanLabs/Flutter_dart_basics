import 'package:flutter/material.dart';

void main() {
  runApp(const RowExampleApp());
}

class RowExampleApp extends StatelessWidget {
  const RowExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Example',
      home: Scaffold(
        appBar: AppBar(title: const Text("Row Widget Example")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.home, size: 40, color: Colors.blue),
              Icon(Icons.favorite, size: 40, color: Colors.red),
              Icon(Icons.settings, size: 40, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
} 
      