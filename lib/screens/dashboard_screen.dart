// import 'package:flutter/material.dart';
// import 'arithmetic_screen.dart';
// import 'simple_interest_screen.dart';
// import 'area_of_circle_screen.dart';
// import 'palindrome_screen.dart';

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Dashboard")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             _menuButton(
//               context,
//               "Arithmetic Operations",
//               const ArithmeticScreen(),
//             ),
//             const SizedBox(height: 12),
//             _menuButton(
//               context,
//               "Simple Interest ",
//               const SimpleInterestScreen(),
//             ),
//             const SizedBox(height: 12),
//             _menuButton(context, "Area of Circle", const AreaOfCircleScreen()),
//             const SizedBox(height: 12),
//             _menuButton(
//               context,
//               "Palindrome Checker",
//               const PalindromeNumberScreen(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _menuButton(BuildContext context, String title, Widget screen) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: () {
//           Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
//         },
//         child: Text(title),
//       ),
//     );
//   }
// }

import 'package:assignment_2/screens/flutter_layout_screen.dart';
import 'package:assignment_2/screens/rich_text.dart';
import 'package:flutter/material.dart';
import 'arithmetic_screen.dart';
import 'simple_interest_screen.dart';
import 'area_of_circle_screen.dart';
import 'palindrome_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _menuTile(
              context: context,
              title: "Arithmetic Operations",
              screen: const ArithmeticScreen(),
            ),

            _menuTile(
              context: context,
              title: "Simple Interest",
              screen: const SimpleInterestScreen(),
            ),

            _menuTile(
              context: context,
              title: "Area of Circle",
              screen: const AreaOfCircleScreen(),
            ),

            _menuTile(
              context: context,
              title: "Palindrome Checker",
              screen: const PalindromeNumberScreen(),
            ),

            _menuTile(
              context: context,
              title: "Rich Text",
              screen: RichTextScreen(),
            ),

            _menuTile(
              context: context,
              title: "Layout Screen",
              screen: FlutterLayoutScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuTile({
    required BuildContext context,
    required String title,
    required Widget screen,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xfff7f7f7),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            const Text(
              ">",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
