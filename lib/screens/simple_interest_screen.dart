// import 'package:flutter/material.dart';

// class SimpleInterestScreen extends StatefulWidget {
//   const SimpleInterestScreen({super.key});

//   @override
//   State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
// }

// class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
//   double principal = 0, rate = 0, time = 0, simpleInterest = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Simple Interest Calculator")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             field(
//               "Enter Principal",
//               (v) => principal = double.tryParse(v) ?? 0,
//             ),
//             const SizedBox(height: 8),
//             field("Enter Rate (%)", (v) => rate = double.tryParse(v) ?? 0),
//             const SizedBox(height: 8),
//             field("Enter Time (years)", (v) => time = double.tryParse(v) ?? 0),
//             const SizedBox(height: 12),

//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     simpleInterest = (principal * rate * time) / 100;
//                   });
//                 },
//                 child: const Text("CALCULATE SI"),
//               ),
//             ),

//             const SizedBox(height: 20),
//             Text(
//               "Simple Interest: $simpleInterest",
//               style: const TextStyle(fontSize: 22),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget field(String label, Function(String) onChange) {
//     return TextField(
//       onChanged: onChange,
//       keyboardType: TextInputType.number,
//       decoration: InputDecoration(
//         labelText: label,
//         border: const OutlineInputBorder(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double principle = 0;
  double time = 0;
  double rate = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleInterest Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                principle = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: "Enter Principle",
                hintText: "e.g 10000",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                time = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: "Enter Time",
                hintText: "e.g 2 year",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = double.tryParse(value) ?? 0;
              },
              decoration: InputDecoration(
                labelText: "Enter Rate ",
                hintText: "e.g 8%",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = (principle * rate * time) / 100;
                  });
                },
                child: Text("Calculate"),
              ),
            ),
            SizedBox(height: 12),
            Text("Result: $result"),
          ],
        ),
      ),
    );
  }
}
