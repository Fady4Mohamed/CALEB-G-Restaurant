import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/like/presentation/widgets/LikeData.dart';
import 'package:caleb_g/app/features/like/presentation/widgets/LikeImage.dart';
import 'package:flutter/material.dart';

class LikeContainer extends StatelessWidget {
  const LikeContainer({
    super.key,
    required this.size, required this.food,
  });
  final FoodModel food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .8,
      height: size.height * .13,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3), // Color of the shadow
          spreadRadius: 2, // Spread radius
          blurRadius: 20,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          LikeImage(size: size,food:food ),
          const Spacer(),
          LikeData(size: size,food: food),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
