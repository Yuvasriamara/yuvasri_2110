import 'package:flutter/material.dart';

class MealCardWidget extends StatelessWidget {
  final String mealName;
  final String mealImage;
  final double price;

  const MealCardWidget({
    super.key,
    required this.mealName,
    required this.mealImage,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(mealImage, height: 150, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              mealName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('\$$price', style: Theme.of(context).textTheme.titleMedium),
          ),
        ],
      ),
    );
  }
}
