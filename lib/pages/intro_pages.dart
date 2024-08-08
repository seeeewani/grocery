import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //logo
        Padding(
          padding: const EdgeInsets.all(80.0),
          child: Image.asset('lib/images/avocado.png'),
        ),

        // we deliver groceries at your doorstep

        // fresh items everyday

        // get started button

      ],
    ));
  }
}
