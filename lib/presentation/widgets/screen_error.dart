import 'package:flutter/material.dart';

class ScreenError extends StatelessWidget {
  final String text;
  const ScreenError(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text, style: const TextStyle(color: Colors.red)),
    );
  }
}
