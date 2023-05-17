import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  int size;
  final String text;
  final Color color;

  LargeText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size.toDouble(),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
