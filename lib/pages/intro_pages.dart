import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //logo
        Padding(
          padding: const EdgeInsets.only(
              left: 80.0, right: 80, bottom: 40, top: 160),
          child: Image.asset('lib/images/avocado.png'),
        ),

        // we deliver groceries at your doorstep
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            "We deliver groceries at your doorstep",
            style: GoogleFonts.notoSerif(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 25),
        // fresh items everyday
        const Text(
          "Fresh items everyday",
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),

        const Spacer(),

        // get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,
            ),
            padding: const EdgeInsets.all(24),
            child: const Text(
              "Get Started",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        const Spacer(),
      ],
    ));
  }
}
