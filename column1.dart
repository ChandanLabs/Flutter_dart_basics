import 'package:flutter/material.dart';

void main() {
  runApp(const ColumnExampleApp());
}

class ColumnExampleApp extends StatelessWidget {
  const ColumnExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Example',
      home: Scaffold(
        appBar: AppBar(title: const Text("Column Widget Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.home, size: 40, color: Colors.blue),
              Icon(Icons.favorite, size: 40, color: Colors.red),
              Icon(Icons.settings, size: 40, color: Colors.green),
              Icon(Icons.camera, size:40)
            ],
          ),
        ),
      ),
    );
  }
}