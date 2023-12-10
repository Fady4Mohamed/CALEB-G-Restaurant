
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LikeData extends StatelessWidget {
  const LikeData({
    super.key,
    required this.size,
  });

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
                'fish dish',
                style: style.style22(context: context),
              ),
            )),
        SizedBox(
          width: size.width * .4,
          child: Row(
            children: [
              Text(
                r'28612250$',
                style: style
                    .style17(context: context)
                    .copyWith(color: AppColors.kMainColor),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.heart,
                    size: size.height * .025,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
