import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatefulWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  State<FlexibleExpandedScreen> createState() => _FlexibleExpandedScreenState();
}

class _FlexibleExpandedScreenState extends State<FlexibleExpandedScreen> {
  _showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.green,
        content: Text("I am container 1"),
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  _showSnackbar2() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.red,
        content: Text("I am container 2"),
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flexible Expanded Screen")),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => _showSnackbar(),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text("First Container"),
                  color: Colors.amber,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () => _showSnackbar2(),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text("Second Container"),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
