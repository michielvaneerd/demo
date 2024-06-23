import 'package:flutter/material.dart';
import 'package:funda/core/styles.dart';

/// Basic text widget
class TextRow extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight fontWeight;
  final double? fontSize;
  const TextRow(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight = FontWeight.normal,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Styles.paddingSmall),
      child: Column(
        children: [
          Text(text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: color, fontWeight: fontWeight, fontSize: fontSize)),
        ],
      ),
    );
  }
}
