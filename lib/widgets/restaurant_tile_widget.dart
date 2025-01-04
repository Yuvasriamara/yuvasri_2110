import 'package:flutter/material.dart';
class RestaurantTileWidget extends StatelessWidget {
  final String restaurantName;
  final String restaurantImage;
  final VoidCallback onTap;

  const RestaurantTileWidget({
    Key? key,
    required this.restaurantName,
    required this.restaurantImage,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(8),
      onTap: onTap,
      leading: Image.network(restaurantImage, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(restaurantName, style: Theme.of(context).textTheme.titleMedium),
      trailing: Icon(Icons.arrow_forward),
    );
  }
}
