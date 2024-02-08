import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:flutter/material.dart';

class itemName extends StatelessWidget {
  const itemName({
    super.key,
    required this.size,
    required this.food,
  });
  final FoodModel food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * .3,
      child: Text(
        food.name,
        style: style.style22(context: context),
        textAlign: TextAlign.center,
      ),
    );
  }
}
