import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatefulWidget {
  const FlutterLayoutScreen({super.key});

  @override
  State<FlutterLayoutScreen> createState() => _FlutterLayoutScreenState();
}

class _FlutterLayoutScreenState extends State<FlutterLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Layout Screen")),
      body: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Column(
              children: [
                const Icon(Icons.phone, size: 50),
                const Spacer(),
                Text("Call", style: TextStyle(fontSize: 20)),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                const Icon(Icons.route, size: 50),
                const Spacer(),
                const Text("Route", style: TextStyle(fontSize: 20)),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                const Icon(Icons.send, size: 50),
                const Spacer(),
                const Text("Send", style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
