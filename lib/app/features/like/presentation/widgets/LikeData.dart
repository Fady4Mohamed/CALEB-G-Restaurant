
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LikeData extends StatelessWidget {
  const LikeData({
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
            child: Padding(
              padding: EdgeInsets.only(top: size.height * .012),
              child: Text(
                food.name,
                style: style.style22(context: context),
              ),
            )),
        SizedBox(
          width: size.width * .4,
          child: Row(
            children: [
              Text(
                'GHS${food.price}',
                style: style
                    .style17(context: context)
                    .copyWith(color: AppColors.kMainColor),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.solidHeart,
                    size: size.height * .025,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
