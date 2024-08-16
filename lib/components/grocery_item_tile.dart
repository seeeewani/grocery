// components/grocery_item_tile.dart
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var mainAxisAlignment;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.2), // Light color for the background
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          mainAxisAlignment: mainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10),
            // Image
            Image.asset(imagePath, height: 64),
            const SizedBox(height: 10),
            // Item name
            Text(
              itemName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            // Spacer
            const Spacer(),
            // Price + Button
            MaterialButton(
              onPressed: onPressed,
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '\$' + itemPrice,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
