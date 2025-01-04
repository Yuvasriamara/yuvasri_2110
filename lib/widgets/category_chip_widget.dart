import 'package:flutter/material.dart';

class CategoryChipWidget extends StatelessWidget {
  final String category;
  final VoidCallback onTap;

  const CategoryChipWidget({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(category),
      onPressed: onTap,
      backgroundColor: Colors.blueAccent,
    );
  }
}
