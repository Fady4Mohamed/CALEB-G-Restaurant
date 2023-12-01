

import 'package:flutter/material.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';

class HomeTitel extends StatelessWidget {
  const HomeTitel({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:(size.width*0.02)+12),
      child: SizedBox(
        width: size.width*.5,
        child: Text('Delicious food for you',style: style.style30(context: context),)),
    );
  }
}