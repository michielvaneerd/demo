import 'package:flutter/material.dart';
import 'package:funda/core/helpers.dart';
import 'package:funda/core/styles.dart';

/// Text widget that can be expanded and collapsed.
/// Displays the first paragraph when collapsed.
class TextRowExpandable extends StatefulWidget {
  final String text;
  final Color? color;
  final FontWeight fontWeight;
  final double? fontSize;
  final Function(bool isExpanded)? onExpand;
  const TextRowExpandable(
      {required this.text,
      this.color,
      this.fontSize,
      this.onExpand,
      this.fontWeight = FontWeight.normal,
      super.key});

  @override
  State<TextRowExpandable> createState() => _TextRowExpandableState();
}

class _TextRowExpandableState extends State<TextRowExpandable> {
  var isExpanded = false;
  var canExpand = false;
  late String currentText;
  late final List<String> parts;

  @override
  void initState() {
    super.initState();
    parts = widget.text.split("\n\n");
    canExpand = parts.isNotEmpty;
    currentText = _getText();
  }

  String _getText() {
    if (canExpand && !isExpanded) {
      return parts.first;
    } else {
      return widget.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Styles.paddingSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(currentText,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: widget.color,
                  fontWeight: widget.fontWeight,
                  fontSize: widget.fontSize)),
          if (canExpand)
            TextButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                    currentText = _getText();
                  });
                  if (widget.onExpand != null) {
                    widget.onExpand!(isExpanded);
                  }
                },
                child: isExpanded
                    ? Text(myLoc(context).readLess)
                    : Text(myLoc(context).readMore))
        ],
      ),
    );
  }
}
