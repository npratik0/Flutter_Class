import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  // int first = 0;
  // int second = 0;

  // COntroller
  final TextEditingController firstController = TextEditingController(
    text: "1",
  );

  final TextEditingController secondController = TextEditingController(
    text: "2",
  );

  int result = 0;

  // Global key for from state
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Arithmetic Operations")),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstController,
                decoration: const InputDecoration(
                  labelText: "Enter first number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter first number";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondController,
                decoration: const InputDecoration(
                  labelText: "Enter second number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter first number";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),

              _btn("ADD", () {
                int first = int.parse(firstController.text);
                int second = int.parse(secondController.text);

                result = first + second;
              }),

              _btn("SUBTRACT", () {
                int first = int.parse(firstController.text);
                int second = int.parse(secondController.text);
                result = first - second;
              }),
              _btn("MULTIPLY", () {
                int first = int.parse(firstController.text);
                int second = int.parse(secondController.text);
                result = first * second;
              }),
              _btn("DIVIDE", () {
                int first = int.parse(firstController.text);
                int second = int.parse(secondController.text);
                result = second == 0 ? 0 : first ~/ second;
              }),
              const SizedBox(height: 12),
              Text("Result: $result", style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _btn(String text, Function() calcFunction) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formkey.currentState!.validate()) {
            setState(() {
              calcFunction();
            });
          }
        },
        child: Text(text),
      ),
    );
  }
}
