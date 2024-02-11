

import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:flutter/material.dart';

class Productimage extends StatelessWidget {
  const Productimage({
    super.key,
    required this.size, required this.food,
  });
  final FoodModel food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
    color: Colors.grey.withOpacity(0.5), // Color of the shadow
    spreadRadius: 8, // Spread radius
    blurRadius: 20, // Blur radius
    offset: Offset(0, 3), // Offset in x and y axis from the container
          ),
        ],),
      child: CircleAvatar(
        
        radius: size.width * .25,
        foregroundImage: NetworkImage(food.image),
      ),
    );
  }
}
