import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool disabled;
  final bool isLoading;
  final Color color;

  const Button(
      {super.key,
      required this.onPressed,
      required this.text,
      this.disabled = false,
      this.isLoading = false,
      this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.zero,
        child: ElevatedButton(
          onPressed: disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
