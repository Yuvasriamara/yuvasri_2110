import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const CustomButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(label, style: TextStyle(fontSize: 16)),
    );
  }
}
