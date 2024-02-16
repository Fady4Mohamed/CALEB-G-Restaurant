
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartData extends StatelessWidget {
  const CartData({
    super.key,
    required this.size, required this.food,
  });
  final FoodModel food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: size.width * .4,
            child: Text(
              food.name,
              style: style.style22(context: context),
            )),
        SizedBox(
          width: size.width * .4,
          child: Row(
            children: [
              Text(
                'GHP${food.price.toString()}',
                style: style
                    .style17(context: context)
                    .copyWith(color: AppColors.kMainColor),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.red),
                child: Padding(
                  padding:  EdgeInsets.all(size.width * .015),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Icon(FontAwesomeIcons.plus,
                                size: size.width * .04),
                      ),
                      Text(' 1 ',style: style.style12(context: context),),
                       GestureDetector(
                        onTap: (){},
                       child:  Icon(FontAwesomeIcons.minus,
                              size: size.width * .04),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
