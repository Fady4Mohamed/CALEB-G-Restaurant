
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/like/presentation/widgets/LikeContainer.dart';
import 'package:flutter/material.dart';

class likeListe extends StatelessWidget {
  const likeListe({
    super.key,
    required this.food,
    required this.size,
  });

  final List<FoodModel> food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 20),
      itemCount: food.length,
      itemBuilder: (BuildContext contex, int i) {
        return Padding(
          padding: EdgeInsets.only(
              top: 15,
              right: size.width * .1,
              left: size.width * .1),
          child: LikeContainer(size: size, food: food[i]),
        );
      },
    );
  }
}
