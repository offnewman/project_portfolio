import 'package:flutter/material.dart';
import 'package:project_portfolio/business_logic/utils/colors.dart';
import 'package:project_portfolio/business_logic/utils/tags.dart';

class TagChip extends StatelessWidget {
  final Tag? tag;

  TagChip(this.tag);

  @override
  Widget build(BuildContext context) {
    Color _elementColor = getContrastingTextColor(tag?.color ?? Colors.white);

    return Chip(
      elevation: 2,
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      avatar: tag?.iconData != null ? Icon(tag?.iconData, color: _elementColor, size: 18) : null,
      label: Text(
        tag?.title ?? '',
        style: TextStyle(color: _elementColor),
      ),
      // labelStyle: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),
      backgroundColor: tag?.color,
    );
  }
}
