
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class LikeAppBar extends StatelessWidget {
  const LikeAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(
       top: size.height * 0.04,
       right: size.width * 0.03,
       left: size.width * 0.03,
     ),
          child: Row(
            children: [
     
     IconButton(
     onPressed: () {
       Navigator.pop(context);
     },
     icon:const Icon(
       Icons.chevron_left,
       size: 40,
     )),
     Spacer(flex: 3),
     Text('Like',style: style.style22(context: context),),
     Spacer(flex: 4),
            ],
          ),
        );
  }
}