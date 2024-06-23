import 'package:flutter/material.dart';
import 'package:funda/core/styles.dart';

/// Header widget
class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Styles.paddingSmall),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
