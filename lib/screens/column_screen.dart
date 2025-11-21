import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column Screen")),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 100),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
    );
  }
}
