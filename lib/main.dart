// main.dart
import 'package:flutter/material.dart';
import 'package:grocery_app/model/cart_model.dart';
import 'package:grocery_app/pages/home_page.dart';
//import 'package:grocery_app/pages/intro_pages.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
