import 'package:caleb_g/app/core/app_routers.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/Itemimage.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/itemName.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/itemprice.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.size,
    required this.food,
  });
  final FoodModel food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kProductView);
      },
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * .06),
            child: Container(
              height: size.height * .3,
              width: size.width * .5,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.grey.withOpacity(0.4), // Color of the shadow
                      spreadRadius: 8, // Spread radius
                      blurRadius: 20, // Blur radius
                      offset: Offset(
                          0, 3), // Offset in x and y axis from the container
                    ),
                  ],
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffFFFFFF)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  itemName(size: size, food: food),
                  itemprice(size: size, food: food),
                ],
              ),
            ),
          ),
          Itemimage(size: size,food: food),
        ],
      ),
    );
  }
}
