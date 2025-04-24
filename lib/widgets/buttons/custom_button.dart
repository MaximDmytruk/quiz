import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),

      onPressed: onPressed,
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
