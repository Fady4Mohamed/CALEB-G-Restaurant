import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:flutter/material.dart';

class Itemimage extends StatelessWidget {
  const Itemimage({
    super.key,
    required this.size,
    required this.food,
  });
  final FoodModel food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: ((size.width * .5) / 2) - size.height * .09),
      child: CircleAvatar(
        radius: size.height * .09,
        foregroundImage: NetworkImage(food.image),
      ),
    );
  }
}
