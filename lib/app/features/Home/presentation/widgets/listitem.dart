import 'package:caleb_g/app/core/manager/data/Fetch%20food%20cubit/fetch_food_cubit.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/ItemContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class listitem extends StatelessWidget {
  const listitem({
    super.key,
    required this.size, required this.food,
  });

  final Size size;
 final List<FoodModel> food;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.43,
      child: ListView.builder(
        itemCount: food.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext contex, int i) {
          return Padding(
            padding:
                EdgeInsets.only(left: 24.0, top: size.height * 0.02),
            child: ItemContainer(
              size: size,
              food: food[i],
            ),
          );
        },
      ),
    );
  }
}
