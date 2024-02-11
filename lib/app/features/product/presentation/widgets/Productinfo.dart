import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/product/presentation/widgets/ProductDelivery.dart';
import 'package:caleb_g/app/features/product/presentation/widgets/Productimage.dart';
import 'package:caleb_g/app/features/product/presentation/widgets/Productpolicy.dart';
import 'package:flutter/material.dart';

class Productinfo extends StatelessWidget {
  const Productinfo({
    super.key,
    required this.size, required this.food,
  });
 final FoodModel  food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Productimage(size: size,food: food,),
        SizedBox(
          height: size.height * 0.05,
        ),
        Text(food.name, style: style.style25(context: context)),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text('GHS ${food.price.toString()}',
            style: style
                .style22(context: context)
                .copyWith(color: AppColors.kMainColor)),
        SizedBox(
          height: size.height * 0.05,
        ),
        ProductDelivery(size: size),
        SizedBox(
          height: size.height * 0.04,
        ),
        Productpolicy(size: size),
      ],
    );
  }
}