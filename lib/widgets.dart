import 'package:flutter/material.dart';

class ProductivityButton extends StatelessWidget {
  late final Color color;
  late final String text;
  late final double? size;
  late final VoidCallback onPressed;

  ProductivityButton({
    required this.color,
    required this.text,
    required this.onPressed,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onPressed,
      color: this.color,
      minWidth: this.size,
    );
  }
}
